
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT ;
 int RED ;



 char* assert_err ;
 int assert_err_buff ;
 int assert_err_num ;
 int exit (int ) ;
 int fflush (int ) ;
 int printf (char*,char*) ;
 int pt_color (int ) ;
 int puts (char*) ;
 int sprintf (int ,char*,int) ;
 int stdout ;
 int strcat (char*,int ) ;
 scalar_t__ test_passing ;

__attribute__((used)) static void ptest_signal(int sig) {

  test_passing = 0;

  switch( sig ) {
    case 130: sprintf(assert_err_buff,
      "        %i. Division by Zero\n", assert_err_num+1);
    break;
    case 129: sprintf(assert_err_buff,
      "        %i. Illegal Instruction\n", assert_err_num+1);
    break;
    case 128: sprintf(assert_err_buff,
      "        %i. Segmentation Fault\n", assert_err_num+1);
    break;
  }

  assert_err_num++;
  strcat(assert_err, assert_err_buff);

  pt_color(RED);
  printf("Failed! \n\n%s\n", assert_err);
  pt_color(DEFAULT);

  puts("    | Stopping Execution.");
  fflush(stdout);
  exit(0);

}
