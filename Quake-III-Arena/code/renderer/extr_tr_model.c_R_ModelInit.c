
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ model_t ;
struct TYPE_5__ {scalar_t__ numModels; } ;


 int MOD_BAD ;
 TYPE_1__* R_AllocModel () ;
 TYPE_2__ tr ;

void R_ModelInit( void ) {
 model_t *mod;


 tr.numModels = 0;

 mod = R_AllocModel();
 mod->type = MOD_BAD;
}
