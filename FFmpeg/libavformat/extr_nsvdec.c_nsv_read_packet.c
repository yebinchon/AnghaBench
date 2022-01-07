
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int * data; } ;
struct TYPE_11__ {TYPE_1__* priv_data; } ;
struct TYPE_10__ {int size; } ;
struct TYPE_9__ {TYPE_8__* ahead; } ;
typedef TYPE_1__ NSVContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int memcpy (TYPE_2__*,TYPE_8__*,int) ;
 int nsv_read_chunk (TYPE_3__*,int ) ;

__attribute__((used)) static int nsv_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    NSVContext *nsv = s->priv_data;
    int i, err = 0;


    if (!nsv->ahead[0].data && !nsv->ahead[1].data)
        err = nsv_read_chunk(s, 0);
    if (err < 0)
        return err;


    for (i = 0; i < 2; i++) {
        if (nsv->ahead[i].data) {

            memcpy(pkt, &nsv->ahead[i], sizeof(AVPacket));
            nsv->ahead[i].data = ((void*)0);
            return pkt->size;
        }
    }


    return -1;
}
