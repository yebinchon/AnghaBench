
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* prob; int c; } ;
typedef TYPE_2__ VP8Context ;
typedef int VP56RangeCoder ;
struct TYPE_4__ {int ** mvc; void** pred8x8c; void** pred16x16; } ;


 scalar_t__ vp56_rac_get_prob_branchy (int *,int ) ;
 int ** vp8_mv_update_prob ;
 scalar_t__ vp8_rac_get (int *) ;
 int vp8_rac_get_nn (int *) ;
 void* vp8_rac_get_uint (int *,int) ;

__attribute__((used)) static void vp78_update_pred16x16_pred8x8_mvc_probabilities(VP8Context *s,
                                                            int mvc_size)
{
    VP56RangeCoder *c = &s->c;
    int i, j;

    if (vp8_rac_get(c))
        for (i = 0; i < 4; i++)
            s->prob->pred16x16[i] = vp8_rac_get_uint(c, 8);
    if (vp8_rac_get(c))
        for (i = 0; i < 3; i++)
            s->prob->pred8x8c[i] = vp8_rac_get_uint(c, 8);


    for (i = 0; i < 2; i++)
        for (j = 0; j < mvc_size; j++)
            if (vp56_rac_get_prob_branchy(c, vp8_mv_update_prob[i][j]))
                s->prob->mvc[i][j] = vp8_rac_get_nn(c);
}
