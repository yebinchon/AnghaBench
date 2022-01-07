
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sigaction {scalar_t__ sa_mask; int sa_flags; int sa_handler; } ;
typedef scalar_t__ boolean_t ;


 int SA_RESTART ;
 int SIGBUS ;
 int SIGSEGV ;
 int TESTS ;
 int TRUE ;
 int atoi (char*) ;
 char* error ;
 int exit (int ) ;
 int fflush (int ) ;
 int printf (char*,...) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int stdout ;
 int strcmp (char*,char*) ;
 scalar_t__ test_alloc_dealloc (int ) ;
 int test_signal_handler ;
 int testit (int) ;

int main(int argc, char **argv) {
 int i;
 uint64_t time1, time2;

 int mode = 0;
 if (argc>1) {
  if (!strcmp(argv[1], "-h")) {
   printf("Usage: %s <mode>\n", argv[0]);
   printf("\tmode = 0:  test all cases\n");
   printf("\tmode = -1: allocate/deallocate until failure\n");
   printf("\tmode > 0:  run test <tmode>\n");
   exit(0);
  }
  mode=atoi(argv[1]);
 }


 struct sigaction my_sigaction;
 my_sigaction.sa_handler = test_signal_handler;
 my_sigaction.sa_flags = SA_RESTART;
 my_sigaction.sa_mask = 0;
 sigaction( SIGBUS, &my_sigaction, ((void*)0) );
 sigaction( SIGSEGV, &my_sigaction, ((void*)0) );

 if (mode>0)
  testit(mode-1);

 if (mode==0) {
  printf("Running %d tests:\n", TESTS);
  for (i=0; i<TESTS; i++) {
   testit(i);
  }
 }
 if (mode==-1) {
   boolean_t ret;
  do {
   ret = test_alloc_dealloc(TRUE);
   printf(".");
   fflush(stdout);
  } while (ret);
  if (error[0])
   printf (" (%s)\n", error);
 }
 return 0;
}
