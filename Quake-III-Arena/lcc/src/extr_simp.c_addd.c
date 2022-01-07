
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int warning (char*) ;

__attribute__((used)) static int addd(double x, double y, double min, double max, int needconst) {
 int cond = x == 0 || y == 0
 || x < 0 && y < 0 && x >= min - y
 || x < 0 && y > 0
 || x > 0 && y < 0
 || x > 0 && y > 0 && x <= max - y;
 if (!cond && needconst) {
  warning("overflow in constant expression\n");
  cond = 1;
 }
 return cond;


}
