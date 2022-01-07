
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * predictor_state; } ;
typedef TYPE_1__ SingleChannelElement ;
typedef int PredictorState ;


 int MAX_PREDICTORS ;
 int reset_predict_state (int *) ;

__attribute__((used)) static inline void reset_predictor_group(SingleChannelElement *sce, int group_num)
{
    int i;
    PredictorState *ps = sce->predictor_state;
    for (i = group_num - 1; i < MAX_PREDICTORS; i += 30)
        reset_predict_state(&ps[i]);
}
