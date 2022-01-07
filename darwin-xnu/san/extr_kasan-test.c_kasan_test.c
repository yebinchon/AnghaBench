
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_INVALID ;
 int TEST_PASS ;
 int kasan_run_test (int ,int,int) ;
 int num_xnutests ;
 int printf (char*,int,int) ;
 int xnu_tests ;

void
kasan_test(int testno, int fail)
{
 int i = 1;
 int pass = 0, total = 0;
 int ret;

 if (testno == -1) {

  testno = (1U << (num_xnutests-1)) - 1;
 }

 while (testno) {
  if (testno & 0x1) {
   ret = kasan_run_test(xnu_tests, i, fail);
   if (ret == TEST_PASS) {
    pass++;
   }
   if (ret != TEST_INVALID) {
    total++;
   }
  }

  i++;
  testno >>= 1;
 }
 printf("KASan: TEST SUMMARY %d/%d passed\n", pass, total);
}
