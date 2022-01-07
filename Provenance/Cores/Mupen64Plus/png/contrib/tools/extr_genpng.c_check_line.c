
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg {int width; int y2; int x2; int y1; int x1; } ;


 int FILTER_WIDTH ;
 int INSIDE ;
 int OUTSIDE ;
 scalar_t__ line_check (double,double,int ,int ,int ,int ,int,int) ;

__attribute__((used)) static int
check_line(const struct arg *arg, double x, double y)
{



   if (line_check(x, y, arg->x1, arg->y1, arg->x2, arg->y2, arg->width/2,
       FILTER_WIDTH))
   {



      if (arg->width > 2*FILTER_WIDTH &&
          line_check(x, y, arg->x1, arg->y1, arg->x2, arg->y2, arg->width/2,
             -FILTER_WIDTH))
         return INSIDE;

      return 0;
   }

   return OUTSIDE;
}
