
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* weak_classifiers; } ;
typedef TYPE_1__ ccv_icf_classifier_cascade_t ;


 int ccfree (TYPE_1__*) ;

void ccv_icf_classifier_cascade_free(ccv_icf_classifier_cascade_t* classifier)
{
 ccfree(classifier->weak_classifiers);
 ccfree(classifier);
}
