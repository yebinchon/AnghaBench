
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ProcUIInit (int *) ;
 int SaveCallback ;
 int fflush (int ) ;
 int init_logging () ;
 int init_network () ;
 int init_pad_libraries () ;
 int setup_os_exceptions () ;
 int stdout ;
 int verbosity_enable () ;

__attribute__((used)) static void main_setup(void)
{
   setup_os_exceptions();
   ProcUIInit(&SaveCallback);
   init_network();
   init_logging();
   init_pad_libraries();
   verbosity_enable();
   fflush(stdout);
}
