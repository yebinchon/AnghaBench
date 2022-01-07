
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int color_delay; } ;
struct TYPE_3__ {int color_delay; } ;


 TYPE_2__ COLOURS_NTSC_setup ;
 TYPE_1__ default_setup ;

void COLOURS_NTSC_RestoreDefaults(void)
{
 COLOURS_NTSC_setup.color_delay = default_setup.color_delay;
}
