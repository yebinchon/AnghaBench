
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
typedef int uint16 ;
struct TYPE_4__ {int * mapPtr; int * tracePtr; scalar_t__ bufferStart; scalar_t__ bufferOffset; scalar_t__ mapShift; scalar_t__ stampShift; scalar_t__ dotMask; scalar_t__ cyclesPerLine; scalar_t__ cycles; } ;
struct TYPE_3__ {scalar_t__ word_ram_2M; } ;


 TYPE_2__ gfx ;
 int load_param (scalar_t__*,int) ;
 TYPE_1__ scd ;

int gfx_context_load(uint8 *state)
{
  uint32 tmp32;
  int bufferptr = 0;

  load_param(&gfx.cycles, sizeof(gfx.cycles));
  load_param(&gfx.cyclesPerLine, sizeof(gfx.cyclesPerLine));
  load_param(&gfx.dotMask, sizeof(gfx.dotMask));
  load_param(&gfx.stampShift, sizeof(gfx.stampShift));
  load_param(&gfx.mapShift, sizeof(gfx.mapShift));
  load_param(&gfx.bufferOffset, sizeof(gfx.bufferOffset));
  load_param(&gfx.bufferStart, sizeof(gfx.bufferStart));

  load_param(&tmp32, 4);
  gfx.tracePtr = (uint16 *)(scd.word_ram_2M + tmp32);

  load_param(&tmp32, 4);
  gfx.mapPtr = (uint16 *)(scd.word_ram_2M + tmp32);

  return bufferptr;
}
