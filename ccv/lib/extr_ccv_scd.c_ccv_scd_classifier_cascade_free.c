
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; struct TYPE_5__* classifiers; struct TYPE_5__* features; } ;
typedef TYPE_1__ ccv_scd_stump_classifier_t ;
typedef TYPE_1__ ccv_scd_classifier_cascade_t ;


 int ccfree (TYPE_1__*) ;

void ccv_scd_classifier_cascade_free(ccv_scd_classifier_cascade_t* cascade)
{
 int i;
 for (i = 0; i < cascade->count; i++)
 {
  ccv_scd_stump_classifier_t* classifier = cascade->classifiers + i;
  ccfree(classifier->features);
 }
 ccfree(cascade->classifiers);
 ccfree(cascade);
}
