
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum Mode { ____Placeholder_Mode } Mode ;
struct TYPE_6__ {int * pitch_gain; int beta; int pitch_lag_int; } ;
struct TYPE_5__ {int pitch_fac; int pitch_lag; } ;
typedef TYPE_1__ AMRFixed ;
typedef TYPE_2__ AMRContext ;


 int FFMIN (int ,double) ;
 int MODE_12k2 ;
 int MODE_4k75 ;
 int SHARP_MAX ;
 int av_clipf (int ,double,int ) ;

__attribute__((used)) static void pitch_sharpening(AMRContext *p, int subframe, enum Mode mode,
                             AMRFixed *fixed_sparse)
{



    if (mode == MODE_12k2)
        p->beta = FFMIN(p->pitch_gain[4], 1.0);

    fixed_sparse->pitch_lag = p->pitch_lag_int;
    fixed_sparse->pitch_fac = p->beta;




    if (mode != MODE_4k75 || subframe & 1)
        p->beta = av_clipf(p->pitch_gain[4], 0.0, SHARP_MAX);
}
