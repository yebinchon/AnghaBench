
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hue; int saturation; } ;


 TYPE_1__ COLOURS_NTSC_setup ;
 int M_PI ;
 int UpdateYIQTable (double*,int,int ) ;
 int YIQ2RGB (int*,double*) ;
 int colorburst_angle ;

void COLOURS_NTSC_Update(int colourtable[256])
{
 double yiq_table[768];
 UpdateYIQTable(yiq_table, - colorburst_angle + COLOURS_NTSC_setup.hue * M_PI, COLOURS_NTSC_setup.saturation);
 YIQ2RGB(colourtable, yiq_table);
}
