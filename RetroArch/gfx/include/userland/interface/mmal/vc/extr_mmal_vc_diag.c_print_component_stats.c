
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct MMAL_VC_COMP_STATS_T {int state; char* name; int pid; int pool_mem_alloc_size; int comp; } ;
struct TYPE_4__ {int list_size; int created; int destroyed; int destroying; int failed; struct MMAL_VC_COMP_STATS_T* component_list; } ;
struct TYPE_5__ {TYPE_1__ components; } ;
typedef TYPE_2__ MMAL_VC_STATS_T ;





 int MMAL_STATS_COMP_IDLE ;
 int fprintf (int ,char*,int) ;
 int printf (char*,...) ;
 int stderr ;

__attribute__((used)) static int print_component_stats(const MMAL_VC_STATS_T *stats)
{
   size_t i;
   if (stats->components.list_size > 64)
   {
      fprintf(stderr,"component array looks corrupt (list size %d\n",
            stats->components.list_size);
      goto fail;
   }
   printf("%d created, %d destroyed (%d destroying), %d create failures\n",
         stats->components.created,
         stats->components.destroyed,
         stats->components.destroying,
         stats->components.failed);

   for (i=0; i < stats->components.list_size; i++)
   {
      const struct MMAL_VC_COMP_STATS_T *cs = stats->components.component_list+i;
      const char *state;

      if (cs->state != MMAL_STATS_COMP_IDLE)
      {
         switch (cs->state)
         {
            case 130: state = "created"; break;
            case 128: state = "destroying"; break;
            case 129: state = "destroyed"; break;
            default: state = "corrupt"; break;
         }
         printf("%-32s: %s: pid %d address %p pool mem alloc size %d\n",
               cs->name, state, cs->pid, cs->comp, cs->pool_mem_alloc_size);
      }
   }
   return 0;
fail:
   return -1;
}
