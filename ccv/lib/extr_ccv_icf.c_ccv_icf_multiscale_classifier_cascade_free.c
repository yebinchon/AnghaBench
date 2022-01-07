
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int count; TYPE_1__* cascade; } ;
typedef TYPE_2__ ccv_icf_multiscale_classifier_cascade_t ;
struct TYPE_5__ {TYPE_2__* weak_classifiers; } ;


 int ccfree (TYPE_2__*) ;

void ccv_icf_multiscale_classifier_cascade_free(ccv_icf_multiscale_classifier_cascade_t* classifier)
{
 int i;
 for (i = 0; i < classifier->count; i++)
  ccfree(classifier->cascade[i].weak_classifiers);
 ccfree(classifier);
}
