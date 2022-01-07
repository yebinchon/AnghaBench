
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pass; scalar_t__ features; } ;
typedef TYPE_1__ ccv_icf_decision_tree_t ;


 float _ccv_icf_run_feature (scalar_t__,float*,int,int,int,int) ;

__attribute__((used)) static inline int _ccv_icf_run_weak_classifier(ccv_icf_decision_tree_t* weak_classifier, float* ptr, int cols, int ch, int x, int y)
{
 float c = _ccv_icf_run_feature(weak_classifier->features, ptr, cols, ch, x, y);
 if (c > 0)
 {
  if (!(weak_classifier->pass & 0x1))
   return 1;
  return _ccv_icf_run_feature(weak_classifier->features + 2, ptr, cols, ch, x, y) > 0;
 } else {
  if (!(weak_classifier->pass & 0x2))
   return 0;
  return _ccv_icf_run_feature(weak_classifier->features + 1, ptr, cols, ch, x, y) > 0;
 }
}
