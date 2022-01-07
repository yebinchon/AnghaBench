
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v_columns; } ;


 int ATTR_NONE ;
 int gc_paint_char (unsigned int,unsigned int,char,int ) ;
 TYPE_1__ vinfo ;

__attribute__((used)) static void
gc_clear_line(unsigned int xx, unsigned int yy, int which)
{
 unsigned int start, end, i;
 switch (which) {
 case 0:
  start = xx;
  end = vinfo.v_columns-1;
  break;
 case 1:
  start = 0;
  end = xx;
  break;
 case 2:
  start = 0;
  end = vinfo.v_columns-1;
  break;
 default:
  return;
 }

 for (i = start; i <= end; i++) {
  gc_paint_char(i, yy, ' ', ATTR_NONE);
 }
}
