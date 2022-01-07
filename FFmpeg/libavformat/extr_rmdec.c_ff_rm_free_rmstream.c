
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pkt; } ;
typedef TYPE_1__ RMStream ;


 int av_packet_unref (int *) ;

void ff_rm_free_rmstream (RMStream *rms)
{
    av_packet_unref(&rms->pkt);
}
