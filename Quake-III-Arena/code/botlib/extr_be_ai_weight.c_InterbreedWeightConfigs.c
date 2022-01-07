
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int numweights; TYPE_1__* weights; } ;
typedef TYPE_2__ weightconfig_t ;
struct TYPE_9__ {int (* Print ) (int ,char*) ;} ;
struct TYPE_7__ {int firstseperator; } ;


 int InterbreedFuzzySeperator_r (int ,int ,int ) ;
 int PRT_ERROR ;
 TYPE_3__ botimport ;
 int stub1 (int ,char*) ;

void InterbreedWeightConfigs(weightconfig_t *config1, weightconfig_t *config2,
        weightconfig_t *configout)
{
 int i;

 if (config1->numweights != config2->numweights ||
  config1->numweights != configout->numweights)
 {
  botimport.Print(PRT_ERROR, "cannot interbreed weight configs, unequal numweights\n");
  return;
 }
 for (i = 0; i < config1->numweights; i++)
 {
  InterbreedFuzzySeperator_r(config1->weights[i].firstseperator,
         config2->weights[i].firstseperator,
         configout->weights[i].firstseperator);
 }
}
