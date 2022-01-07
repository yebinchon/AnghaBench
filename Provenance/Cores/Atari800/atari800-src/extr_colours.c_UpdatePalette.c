
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int adjust; scalar_t__ loaded; } ;


 scalar_t__ Atari800_TV_NTSC ;
 scalar_t__ Atari800_tv_mode ;
 int COLOURS_NTSC_Update (int ) ;
 int COLOURS_PAL_Update (int ) ;
 TYPE_1__* Colours_external ;
 int Colours_table ;
 int CopyExternalWithoutAdjustments () ;

__attribute__((used)) static void UpdatePalette(void)
{
 if (Colours_external->loaded && !Colours_external->adjust)
  CopyExternalWithoutAdjustments();
 else if (Atari800_tv_mode == Atari800_TV_NTSC)
  COLOURS_NTSC_Update(Colours_table);
 else
  COLOURS_PAL_Update(Colours_table);
}
