
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg {int width; } ;


 double FILTER_WIDTH ;
 int INSIDE ;
 int OUTSIDE ;
 scalar_t__ circle_check_line (struct arg const*,double,double,double) ;

__attribute__((used)) static int
check_circle(const struct arg *arg, double x, double y)
{

   double w = arg->width/2;

   if (circle_check_line(arg, x, y, w+FILTER_WIDTH) == 0)
   {
      w -= FILTER_WIDTH;

      if (w > 0 && circle_check_line(arg, x, y, w) == 0)
         return INSIDE;


      return 0;
   }

   else
      return OUTSIDE;
}
