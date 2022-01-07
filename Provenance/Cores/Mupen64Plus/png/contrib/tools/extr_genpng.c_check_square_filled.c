
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg {int dummy; } ;


 int FILTER_WIDTH ;
 int square_check_line (struct arg const*,double,double,int ) ;

__attribute__((used)) static int
check_square_filled(const struct arg *arg, double x, double y)
{





   return square_check_line(arg, x, y, FILTER_WIDTH);
}
