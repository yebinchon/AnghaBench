
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {size_t numColors; int * colorRanges; } ;
typedef TYPE_1__ itemDef_t ;
struct TYPE_6__ {int color; int high; int low; } ;
typedef TYPE_2__ colorRangeDef_t ;
typedef int color ;


 size_t MAX_COLOR_RANGES ;
 scalar_t__ PC_Color_Parse (int,int *) ;
 scalar_t__ PC_Float_Parse (int,int *) ;
 int memcpy (int *,TYPE_2__*,int) ;
 int qfalse ;
 int qtrue ;

qboolean ItemParse_addColorRange( itemDef_t *item, int handle ) {
 colorRangeDef_t color;

 if (PC_Float_Parse(handle, &color.low) &&
  PC_Float_Parse(handle, &color.high) &&
  PC_Color_Parse(handle, &color.color) ) {
  if (item->numColors < MAX_COLOR_RANGES) {
   memcpy(&item->colorRanges[item->numColors], &color, sizeof(color));
   item->numColors++;
  }
  return qtrue;
 }
 return qfalse;
}
