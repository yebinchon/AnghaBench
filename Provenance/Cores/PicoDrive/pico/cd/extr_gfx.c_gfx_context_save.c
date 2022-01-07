
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int * uint32 ;
struct TYPE_4__ {int word_ram2M; } ;
struct TYPE_3__ {int * y_step; scalar_t__ mapPtr; scalar_t__ tracePtr; int * bufferStart; int * bufferOffset; int * mapShift; int * stampShift; int * dotMask; } ;


 TYPE_2__* Pico_mcd ;
 TYPE_1__ gfx ;
 int save_param (int **,int) ;

int gfx_context_save(uint8 *state)
{
  uint32 tmp32;
  int bufferptr = 0;



  save_param(&gfx.dotMask, sizeof(gfx.dotMask));
  save_param(&gfx.stampShift, sizeof(gfx.stampShift));
  save_param(&gfx.mapShift, sizeof(gfx.mapShift));
  save_param(&gfx.bufferOffset, sizeof(gfx.bufferOffset));
  save_param(&gfx.bufferStart, sizeof(gfx.bufferStart));

  tmp32 = (uint8 *)(gfx.tracePtr) - Pico_mcd->word_ram2M;
  save_param(&tmp32, 4);

  tmp32 = (uint8 *)(gfx.mapPtr) - Pico_mcd->word_ram2M;
  save_param(&tmp32, 4);

  save_param(&gfx.y_step, sizeof(gfx.y_step));

  return bufferptr;
}
