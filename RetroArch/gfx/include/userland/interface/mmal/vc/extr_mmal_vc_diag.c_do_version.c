
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ MMAL_STATUS_T ;


 scalar_t__ MMAL_SUCCESS ;
 int UINT_MAX ;
 int fprintf (int ,char*,scalar_t__,char*) ;
 char* mmal_status_to_string (scalar_t__) ;
 scalar_t__ mmal_vc_get_version (int*,int*,int*) ;
 int printf (char*,int,int,int) ;
 int stderr ;

__attribute__((used)) static int do_version(int argc, const char **argv)
{
   uint32_t maj = UINT_MAX, min = UINT_MAX, minimum;
   MMAL_STATUS_T st = mmal_vc_get_version(&maj, &min, &minimum);
   (void)argc; (void)argv;
   if (st == MMAL_SUCCESS)
   {
      printf("version %d.%02d (min %d)\n", maj, min, minimum);
      return 0;
   }
   else
   {
      fprintf(stderr, "error getting version (%i:%s)\n", st, mmal_status_to_string(st));
      return -1;
   }
}
