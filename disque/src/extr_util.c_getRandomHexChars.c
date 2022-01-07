
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct timeval {unsigned char tv_usec; unsigned char tv_sec; } ;
typedef int seed ;
typedef unsigned char pid_t ;
typedef int pid ;
typedef int counter ;
typedef int SHA1_CTX ;
typedef int FILE ;


 int SHA1Final (unsigned char*,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,unsigned char*,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (unsigned char*,int,int,int *) ;
 unsigned char getpid () ;
 int gettimeofday (struct timeval*,int *) ;
 int memcpy (char*,unsigned char*,int) ;
 char rand () ;

void getRandomHexChars(char *p, unsigned int len) {
    char *charset = "0123456789abcdef";
    unsigned int j;


    static int seed_initialized = 0;
    static unsigned char seed[20];
    static uint64_t counter = 0;

    if (!seed_initialized) {




        FILE *fp = fopen("/dev/urandom","r");
        if (fp && fread(seed,sizeof(seed),1,fp) == 1)
            seed_initialized = 1;
        if (fp) fclose(fp);
    }

    if (seed_initialized) {
        while(len) {
            unsigned char digest[20];
            SHA1_CTX ctx;
            unsigned int copylen = len > 20 ? 20 : len;

            SHA1Init(&ctx);
            SHA1Update(&ctx, seed, sizeof(seed));
            SHA1Update(&ctx, (unsigned char*)&counter,sizeof(counter));
            SHA1Final(digest, &ctx);
            counter++;

            memcpy(p,digest,copylen);

            for (j = 0; j < copylen; j++) p[j] = charset[p[j] & 0x0F];
            len -= copylen;
            p += copylen;
        }
    } else {



        char *x = p;
        unsigned int l = len;
        struct timeval tv;
        pid_t pid = getpid();


        gettimeofday(&tv,((void*)0));
        if (l >= sizeof(tv.tv_usec)) {
            memcpy(x,&tv.tv_usec,sizeof(tv.tv_usec));
            l -= sizeof(tv.tv_usec);
            x += sizeof(tv.tv_usec);
        }
        if (l >= sizeof(tv.tv_sec)) {
            memcpy(x,&tv.tv_sec,sizeof(tv.tv_sec));
            l -= sizeof(tv.tv_sec);
            x += sizeof(tv.tv_sec);
        }
        if (l >= sizeof(pid)) {
            memcpy(x,&pid,sizeof(pid));
            l -= sizeof(pid);
            x += sizeof(pid);
        }


        for (j = 0; j < len; j++) {
            p[j] ^= rand();
            p[j] = charset[p[j] & 0x0F];
        }
    }
}
