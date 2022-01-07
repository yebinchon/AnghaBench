
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {char* name; int offset; } ;
typedef int MMAL_VC_STATS_T ;
typedef scalar_t__ MMAL_STATUS_T ;


 scalar_t__ MMAL_SUCCESS ;
 int fprintf (int ,char*,scalar_t__,char*) ;
 char* mmal_status_to_string (scalar_t__) ;
 scalar_t__ mmal_vc_get_stats (int *,int) ;
 int printf (char*,char*,int) ;
 TYPE_1__* stats_fields ;
 int stderr ;
 scalar_t__ strcasecmp (char const*,char*) ;
 unsigned int vcos_countof (TYPE_1__*) ;

__attribute__((used)) static int do_stats(int argc, const char **argv)
{
   MMAL_VC_STATS_T stats;
   int reset_stats = strcasecmp(argv[1], "reset") == 0;
   MMAL_STATUS_T st = mmal_vc_get_stats(&stats, reset_stats);
   int ret;
   (void)argc; (void)argv;
   if (st != MMAL_SUCCESS)
   {
      fprintf(stderr, "error getting status (%i,%s)\n", st, mmal_status_to_string(st));
      ret = -1;
   }
   else
   {
      unsigned i;
      uint32_t *ptr = (uint32_t*)&stats;
      for (i=0; i<vcos_countof(stats_fields); i++)
      {
         printf("%-32s: %u\n", stats_fields[i].name, ptr[stats_fields[i].offset/sizeof(uint32_t)]);
      }
      ret = 0;
   }
   return ret;
}
