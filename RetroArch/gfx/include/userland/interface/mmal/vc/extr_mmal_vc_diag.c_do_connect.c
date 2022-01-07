
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;


 int MMAL_SUCCESS ;
 int exit (int) ;
 int fprintf (int ,char*,int,char*) ;
 char* mmal_status_to_string (int) ;
 int mmal_vc_init () ;
 int stderr ;

__attribute__((used)) static void do_connect(void)
{

   MMAL_STATUS_T st;
   if ((st = mmal_vc_init()) != MMAL_SUCCESS)
   {
      fprintf(stderr, "failed to initialize mmal vc library (%i:%s)\n",
            st, mmal_status_to_string(st));
      exit(1);
   }
}
