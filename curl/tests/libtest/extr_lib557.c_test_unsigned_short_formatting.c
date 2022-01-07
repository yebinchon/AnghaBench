
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; char* expected; char* result; } ;


 int BUFSZ ;
 int curl_msprintf (char*,char*,int) ;
 scalar_t__ memcmp (char*,char*,int ) ;
 int printf (char*,...) ;
 int strlen (char*) ;
 TYPE_1__* us_test ;

__attribute__((used)) static int test_unsigned_short_formatting(void)
{
  int i, j;
  int num_ushort_tests = 0;
  int failed = 0;
  for(i = 1; i <= num_ushort_tests; i++) {

    for(j = 0; j<BUFSZ; j++)
      us_test[i].result[j] = 'X';
    us_test[i].result[BUFSZ-1] = '\0';

    (void)curl_msprintf(us_test[i].result, "%hu", us_test[i].num);

    if(memcmp(us_test[i].result,
               us_test[i].expected,
               strlen(us_test[i].expected))) {
      printf("unsigned short test #%.2d: Failed (Expected: %s Got: %s)\n",
             i, us_test[i].expected, us_test[i].result);
      failed++;
    }

  }

  if(!failed)
    printf("All curl_mprintf() unsigned short tests OK!\n");
  else
    printf("Some curl_mprintf() unsigned short tests Failed!\n");

  return failed;
}
