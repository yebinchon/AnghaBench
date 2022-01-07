
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int counter ;
struct TYPE_6__ {TYPE_2__* cluster; scalar_t__ jobid_seed; } ;
struct TYPE_5__ {TYPE_1__* myself; } ;
struct TYPE_4__ {int * name; } ;
typedef int SHA1_CTX ;


 int CONFIG_RUN_ID_SIZE ;
 int SHA1Final (unsigned char*,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,unsigned char*,int) ;
 TYPE_3__ server ;

void generateJobID(char *id, int ttl, int retry) {
    char *b64cset = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                    "abcdefghijklmnopqrstuvwxyz"
                    "0123456789+/";
    char *hexcset = "0123456789abcdef";
    SHA1_CTX ctx;
    unsigned char ttlbytes[2], hash[20];
    int j;
    static uint64_t counter;


    counter++;
    SHA1Init(&ctx);
    SHA1Update(&ctx,(unsigned char*)server.jobid_seed,CONFIG_RUN_ID_SIZE);
    SHA1Update(&ctx,(unsigned char*)&counter,sizeof(counter));
    SHA1Final(hash,&ctx);

    ttl /= 60;
    if (ttl > 65535) ttl = 65535;
    if (ttl < 0) ttl = 1;


    ttl = (retry > 0) ? (ttl|1) : (ttl & ~1);

    ttlbytes[0] = (ttl&0xff00)>>8;
    ttlbytes[1] = ttl&0xff;

    *id++ = 'D';
    *id++ = '-';


    for (j = 0; j < 8; j++) *id++ = server.cluster->myself->name[j];
    *id++ = '-';




    unsigned char *h = hash;
    for (j = 0; j < 6; j++) {
        id[0] = b64cset[h[0]>>2];
        id[1] = b64cset[(h[0]<<4|h[1]>>4)&63];
        id[2] = b64cset[(h[1]<<2|h[2]>>6)&63];
        id[3] = b64cset[h[3]&63];
        id += 4;
        h += 3;
    }
    *id++ = '-';


    id[0] = hexcset[(ttlbytes[0]&0xf0)>>4];
    id[1] = hexcset[ttlbytes[0]&0xf];
    id[2] = hexcset[(ttlbytes[1]&0xf0)>>4];
    id[3] = hexcset[ttlbytes[1]&0xf];
    id += 4;
}
