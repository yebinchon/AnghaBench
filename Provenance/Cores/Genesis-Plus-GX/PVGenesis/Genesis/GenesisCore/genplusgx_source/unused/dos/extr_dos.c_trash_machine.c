
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sound; } ;


 int GFX_TEXT ;
 int clear (int ) ;
 int destroy_bitmap (int ) ;
 int gen_bmp ;
 int msdos_shutdown_sound () ;
 TYPE_1__ option ;
 int screen ;
 int set_gfx_mode (int ,int ,int ,int ,int ) ;

void trash_machine(void)
{
  if(option.sound)
  {
    msdos_shutdown_sound();
  }
  clear(screen);
  destroy_bitmap(gen_bmp);
  set_gfx_mode(GFX_TEXT, 0, 0, 0, 0);
}
