
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGUSR1 ;
 int exit (int) ;
 int vcos_log_error (char*) ;

void default_signal_handler(int signal_number)
{
   if (signal_number == SIGUSR1)
   {


   }
   else
   {

      vcos_log_error("Aborting program\n");
      exit(130);
   }

}
