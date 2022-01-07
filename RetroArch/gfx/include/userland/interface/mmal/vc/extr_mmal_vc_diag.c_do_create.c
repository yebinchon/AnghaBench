
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;
typedef int MMAL_COMPONENT_T ;


 int exit (int) ;
 int mmal_component_create (char const*,int **) ;
 int printf (char*,...) ;

__attribute__((used)) static int do_create(int argc, const char **argv)
{
   MMAL_COMPONENT_T *comp;
   MMAL_STATUS_T st;
   if (argc != 3)
   {
      printf("usage: mmal-vc-diag create <name>\n");
      printf("   e.g. vc.camera\n");
      exit(1);
   }
   st = mmal_component_create(argv[2], &comp);
   if (comp)
      printf("Created component\n");
   else
      printf("Failed to create %s: %d\n", argv[2], st);

   return 0;
}
