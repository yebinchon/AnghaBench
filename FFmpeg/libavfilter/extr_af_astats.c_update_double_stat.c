
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_nans; int nb_infs; int nb_denormals; } ;
typedef TYPE_1__ ChannelStats ;
typedef int AudioStatsContext ;


 int FP_INFINITE ;
 int FP_NAN ;
 int FP_SUBNORMAL ;
 int fpclassify (double) ;

__attribute__((used)) static inline void update_double_stat(AudioStatsContext *s, ChannelStats *p, double d)
{
    int type = fpclassify(d);

    p->nb_nans += type == FP_NAN;
    p->nb_infs += type == FP_INFINITE;
    p->nb_denormals += type == FP_SUBNORMAL;
}
