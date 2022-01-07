
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int test_t ;


 int init_test_common (int *,char*,char*,int,int,int,int,int) ;

void
init_poll_test(test_t *tst, char *testname, char *watchfile, int nprep, int nclean, int event, int want)
{
 init_test_common(tst, testname, watchfile, nprep, nclean, event, want, 1);
}
