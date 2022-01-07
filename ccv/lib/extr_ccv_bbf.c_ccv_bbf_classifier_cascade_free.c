
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; struct TYPE_4__* stage_classifier; struct TYPE_4__* alpha; struct TYPE_4__* feature; } ;
typedef TYPE_1__ ccv_bbf_classifier_cascade_t ;


 int ccfree (TYPE_1__*) ;

void ccv_bbf_classifier_cascade_free(ccv_bbf_classifier_cascade_t* cascade)
{
 int i;
 for (i = 0; i < cascade->count; ++i)
 {
  ccfree(cascade->stage_classifier[i].feature);
  ccfree(cascade->stage_classifier[i].alpha);
 }
 ccfree(cascade->stage_classifier);
 ccfree(cascade);
}
