
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fileno (int ) ;
 scalar_t__ isatty (int ) ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static void case_conclude(int pass, int skip, int fail)
{
 if (isatty(fileno(stdout)))
 {
  if (skip > 0)
  {
   if (fail == 0)
    printf("\033[0;32mall test case(s) passed, %d test case(s) skipped, congratulations!\033[0;0m\n", skip);
   else
    printf("\033[0;31m%d of %d test case(s) passed, %d test case(s) skipped\033[0;0m\n", pass, fail + pass, skip);
  } else {
   if (fail == 0)
    printf("\033[0;32mall test case(s) passed, congratulations!\033[0;0m\n");
   else
    printf("\033[0;31m%d of %d test case(s) passed\033[0;0m\n", pass, fail + pass);
  }
 } else {
  if (skip > 0)
  {
   if (fail == 0)
    printf("all test case(s) passed, %d test case(s) skipped, congratulations!\n", skip);
   else
    printf("%d of %d test case(s) passed, %d test case(s) skipped\n", pass, fail + pass, skip);
  } else {
   if (fail == 0)
    printf("all test case(s) passed, congratulations!\n");
   else
    printf("%d of %d test case(s) passed\n", pass, fail + pass);
  }
 }
}
