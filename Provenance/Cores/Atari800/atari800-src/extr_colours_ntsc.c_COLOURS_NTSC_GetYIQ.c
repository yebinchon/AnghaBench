
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UpdateYIQTable (double*,double const,double) ;

void COLOURS_NTSC_GetYIQ(double yiq_table[768], const double start_angle)
{


 UpdateYIQTable(yiq_table, start_angle, 0.0);
}
