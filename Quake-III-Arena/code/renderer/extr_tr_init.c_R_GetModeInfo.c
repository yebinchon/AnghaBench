
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int width; int height; float pixelAspect; } ;
typedef TYPE_1__ vidmode_t ;
typedef int qboolean ;
struct TYPE_9__ {float value; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {int integer; } ;


 int qfalse ;
 int qtrue ;
 TYPE_5__* r_customaspect ;
 TYPE_4__* r_customheight ;
 TYPE_3__* r_customwidth ;
 TYPE_1__* r_vidModes ;
 int s_numVidModes ;

qboolean R_GetModeInfo( int *width, int *height, float *windowAspect, int mode ) {
 vidmode_t *vm;

    if ( mode < -1 ) {
        return qfalse;
 }
 if ( mode >= s_numVidModes ) {
  return qfalse;
 }

 if ( mode == -1 ) {
  *width = r_customwidth->integer;
  *height = r_customheight->integer;
  *windowAspect = r_customaspect->value;
  return qtrue;
 }

 vm = &r_vidModes[mode];

    *width = vm->width;
    *height = vm->height;
    *windowAspect = (float)vm->width / ( vm->height * vm->pixelAspect );

    return qtrue;
}
