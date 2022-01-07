
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MMAL_VC_COMPACT_AGGRESSIVE ;
 int MMAL_VC_COMPACT_DISCARD ;
 int MMAL_VC_COMPACT_NORMAL ;
 int exit (int) ;
 int mmal_vc_compact (int ,int*) ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int do_compact(int argc, const char **argv)
{
   uint32_t duration;

   if (argc > 2)
   {
      if (strcmp(argv[2], "a") == 0)
      {
         mmal_vc_compact(MMAL_VC_COMPACT_AGGRESSIVE, &duration);
         printf("Triggered aggressive compaction on VC - duration %u us.\n", duration);
      }
      else if (strcmp(argv[2], "d") == 0)
      {
         mmal_vc_compact(MMAL_VC_COMPACT_DISCARD, &duration);
         printf("Triggered discard compaction on VC - duration %u us.\n", duration);
      }
      else if (strcmp(argv[2], "n") == 0)
      {
         mmal_vc_compact(MMAL_VC_COMPACT_NORMAL, &duration);
         printf("Triggered normal compaction on VC - duration %u us.\n", duration);
      }
      else
      {
         printf("Invalid memory compaction option %s\n.", argv[2]);
         exit(1);
      }
   }
   else
   {
      printf("Invalid memory compaction arguments.  Need to specify 'a', 'n' or 't'.\n");
      exit(1);
   }
   return 0;
}
