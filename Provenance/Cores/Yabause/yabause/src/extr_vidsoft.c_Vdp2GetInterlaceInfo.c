
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ vdp2_interlace ;
 scalar_t__ vdp2_is_odd_frame ;

void Vdp2GetInterlaceInfo(int * start_line, int * line_increment)
{
   if (vdp2_interlace)
   {
      if (vdp2_is_odd_frame)
      {
         *start_line = 1;
      }
      else
      {
         *start_line = 0;
      }

      *line_increment = 2;
   }
   else
   {
      *start_line = 0;
      *line_increment = 1;
   }
}
