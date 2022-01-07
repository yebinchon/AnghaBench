
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int minor; int major; } ;
struct TYPE_5__ {int level; int pb; int profile; TYPE_1__ ver; } ;
typedef TYPE_2__ VC2EncContext ;


 int put_vc2_ue_uint (int *,int ) ;

__attribute__((used)) static void encode_parse_params(VC2EncContext *s)
{
    put_vc2_ue_uint(&s->pb, s->ver.major);
    put_vc2_ue_uint(&s->pb, s->ver.minor);
    put_vc2_ue_uint(&s->pb, s->profile);
    put_vc2_ue_uint(&s->pb, s->level);
}
