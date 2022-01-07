
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,double) ;

__attribute__((used)) static void
print_one(const char *leader, double err)
{
   if (err != -1.)
      printf(" %s %.5f\n", leader, err);
}
