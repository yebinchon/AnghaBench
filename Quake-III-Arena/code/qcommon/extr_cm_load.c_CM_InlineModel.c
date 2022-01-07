
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int clipHandle_t ;
struct TYPE_2__ {int numSubModels; } ;


 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 TYPE_1__ cm ;

clipHandle_t CM_InlineModel( int index ) {
 if ( index < 0 || index >= cm.numSubModels ) {
  Com_Error (ERR_DROP, "CM_InlineModel: bad number");
 }
 return index;
}
