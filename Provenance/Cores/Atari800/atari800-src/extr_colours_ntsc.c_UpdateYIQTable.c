
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ loaded; } ;


 TYPE_1__ COLOURS_NTSC_external ;
 int UpdateYIQTableFromExternal (double*,double,double const) ;
 int UpdateYIQTableFromGenerated (double*,double,double const) ;

__attribute__((used)) static void UpdateYIQTable(double yiq_table[768], double start_angle, const double start_saturation)
{
 if (COLOURS_NTSC_external.loaded)
  UpdateYIQTableFromExternal(yiq_table, start_angle, start_saturation);
 else
  UpdateYIQTableFromGenerated(yiq_table, start_angle, start_saturation);
}
