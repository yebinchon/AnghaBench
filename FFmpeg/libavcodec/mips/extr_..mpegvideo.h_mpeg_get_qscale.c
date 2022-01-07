
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ q_scale_type; int gb; } ;
typedef TYPE_1__ MpegEncContext ;


 int* ff_mpeg2_non_linear_qscale ;
 int get_bits (int *,int) ;

__attribute__((used)) static inline int mpeg_get_qscale(MpegEncContext *s)
{
    int qscale = get_bits(&s->gb, 5);
    if (s->q_scale_type)
        return ff_mpeg2_non_linear_qscale[qscale];
    else
        return qscale << 1;
}
