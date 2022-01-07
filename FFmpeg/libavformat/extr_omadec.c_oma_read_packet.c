
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int (* read_packet ) (TYPE_2__*,int *) ;} ;
typedef TYPE_1__ OMAContext ;
typedef int AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int stub1 (TYPE_2__*,int *) ;

__attribute__((used)) static int oma_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    OMAContext *oc = s->priv_data;
    return oc->read_packet(s, pkt);
}
