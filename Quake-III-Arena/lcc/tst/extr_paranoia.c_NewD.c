
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D ;
 int FLOOR (scalar_t__) ;
 scalar_t__ Half ;
 int Q ;
 int Radix ;
 int Two ;
 int X ;
 int Z ;
 int Z1 ;
 int Zero ;

NewD()
{
 X = Z1 * Q;
 X = FLOOR(Half - X / Radix) * Radix + X;
 Q = (Q - X * Z) / Radix + X * X * (D / Radix);
 Z = Z - Two * X * D;
 if (Z <= Zero) {
  Z = - Z;
  Z1 = - Z1;
  }
 D = Radix * D;
 }
