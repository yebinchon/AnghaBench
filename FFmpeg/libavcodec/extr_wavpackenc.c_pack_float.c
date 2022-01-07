
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ WavPackEncodeContext ;


 int WV_MONO_DATA ;
 int pack_float_sample (TYPE_1__*,int *) ;

__attribute__((used)) static void pack_float(WavPackEncodeContext *s,
                       int32_t *samples_l, int32_t *samples_r,
                       int nb_samples)
{
    int i;

    if (s->flags & WV_MONO_DATA) {
        for (i = 0; i < nb_samples; i++)
            pack_float_sample(s, &samples_l[i]);
    } else {
        for (i = 0; i < nb_samples; i++) {
            pack_float_sample(s, &samples_l[i]);
            pack_float_sample(s, &samples_r[i]);
        }
    }
}
