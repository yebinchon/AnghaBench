
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t index; } ;
typedef TYPE_1__ model_t ;
struct TYPE_8__ {TYPE_1__* (* Hunk_Alloc ) (int,int ) ;} ;
struct TYPE_7__ {size_t numModels; TYPE_1__** models; } ;


 size_t MAX_MOD_KNOWN ;
 int h_low ;
 TYPE_4__ ri ;
 TYPE_1__* stub1 (int,int ) ;
 TYPE_2__ tr ;

model_t *R_AllocModel( void ) {
 model_t *mod;

 if ( tr.numModels == MAX_MOD_KNOWN ) {
  return ((void*)0);
 }

 mod = ri.Hunk_Alloc( sizeof( *tr.models[tr.numModels] ), h_low );
 mod->index = tr.numModels;
 tr.models[tr.numModels] = mod;
 tr.numModels++;

 return mod;
}
