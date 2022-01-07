
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_ALL ;
 int O_BINARY ;
 int PR_Cleanup () ;
 scalar_t__ PR_Initialized () ;
 int _setmode (int ,int ) ;
 int fileno (int ) ;
 int fprintf (int ,char*,...) ;
 char* libtest_arg2 ;
 char* libtest_arg3 ;
 int memory_tracking_init () ;
 int setlocale (int ,char*) ;
 int setmode (int ,int ) ;
 int stderr ;
 int stdout ;
 int test (char*) ;
 int test_argc ;
 char** test_argv ;

int main(int argc, char **argv)
{
  char *URL;
  int result;
  memory_tracking_init();
  if(argc< 2) {
    fprintf(stderr, "Pass URL as argument please\n");
    return 1;
  }

  test_argc = argc;
  test_argv = argv;

  if(argc>2)
    libtest_arg2 = argv[2];

  if(argc>3)
    libtest_arg3 = argv[3];

  URL = argv[1];

  fprintf(stderr, "URL: %s\n", URL);

  result = test(URL);







  return result;
}
