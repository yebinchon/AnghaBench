
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
struct TYPE_5__ {TYPE_1__ pkt; } ;
typedef TYPE_2__ PayloadContext ;


 int av_freep (int *) ;

__attribute__((used)) static void qt_rtp_close(PayloadContext *qt)
{
    av_freep(&qt->pkt.data);
}
