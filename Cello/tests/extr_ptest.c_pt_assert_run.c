
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_err ;
 int assert_err_buff ;
 int assert_err_num ;
 int num_assert_fails ;
 int num_assert_passes ;
 int num_asserts ;
 int sprintf (int ,char*,int,char const*,char const*,int) ;
 int strcat (int ,int ) ;
 int test_passing ;

void pt_assert_run(
  int result, const char* expr, const char* func, const char* file, int line) {

  num_asserts++;
  test_passing = test_passing && result;

  if (result) {
    num_assert_passes++;
  } else {
    sprintf(assert_err_buff,
      "        %i. Assert [ %s ] (%s:%i)\n",
      assert_err_num+1, expr, file, line );
    strcat(assert_err, assert_err_buff);
    assert_err_num++;
    num_assert_fails++;
  }

}
