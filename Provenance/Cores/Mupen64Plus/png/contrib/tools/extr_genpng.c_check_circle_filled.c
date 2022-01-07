
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg {int dummy; } ;


 int FILTER_WIDTH ;
 int circle_check_line (struct arg const*,double,double,int ) ;

__attribute__((used)) static int
check_circle_filled(const struct arg *arg, double x, double y)
{
   return circle_check_line(arg, x, y, FILTER_WIDTH);
}
