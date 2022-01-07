
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BadCond (int ,char*) ;
 int Defect ;
 scalar_t__ N ;
 scalar_t__ Q ;
 scalar_t__ X ;
 scalar_t__ Y ;
 scalar_t__ Z ;
 scalar_t__ Zero ;
 int printf (char*,...) ;

IsYeqX()
{
 if (Y != X) {
  if (N <= 0) {
   if (Z == Zero && Q <= Zero)
    printf("WARNING:  computing\n");
   else BadCond(Defect, "computing\n");
   printf("\t(%.17e) ^ (%.17e)\n", Z, Q);
   printf("\tyielded %.17e;\n", Y);
   printf("\twhich compared unequal to correct %.17e ;\n",
    X);
   printf("\t\tthey differ by %.17e .\n", Y - X);
   }
  N = N + 1;
  }
 }
