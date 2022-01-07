
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int numweights; TYPE_1__* weights; } ;
typedef TYPE_2__ weightconfig_t ;
struct TYPE_4__ {int firstseperator; } ;


 int EvolveFuzzySeperator_r (int ) ;

void EvolveWeightConfig(weightconfig_t *config)
{
 int i;

 for (i = 0; i < config->numweights; i++)
 {
  EvolveFuzzySeperator_r(config->weights[i].firstseperator);
 }
}
