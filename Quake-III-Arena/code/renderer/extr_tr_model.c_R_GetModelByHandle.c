
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qhandle_t ;
typedef int model_t ;
struct TYPE_2__ {int numModels; int ** models; } ;


 TYPE_1__ tr ;

model_t *R_GetModelByHandle( qhandle_t index ) {
 model_t *mod;


 if ( index < 1 || index >= tr.numModels ) {
  return tr.models[0];
 }

 mod = tr.models[index];

 return mod;
}
