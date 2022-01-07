
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct overlay_desc {char* next_index_name; unsigned int next_index; } ;
struct overlay {unsigned int size; int * descs; } ;
typedef scalar_t__ ssize_t ;


 int RARCH_ERR (char*,char const*) ;
 int string_is_empty (char const*) ;
 scalar_t__ task_overlay_find_index (struct overlay*,char const*,size_t) ;

__attribute__((used)) static bool task_overlay_resolve_targets(struct overlay *ol,
      size_t idx, size_t size)
{
   unsigned i;
   struct overlay *current = (struct overlay*)&ol[idx];

   for (i = 0; i < current->size; i++)
   {
      struct overlay_desc *desc = (struct overlay_desc*)&current->descs[i];
      const char *next = desc->next_index_name;
      ssize_t next_idx = (idx + 1) & size;

      if (!string_is_empty(next))
      {
         next_idx = task_overlay_find_index(ol, next, size);

         if (next_idx < 0)
         {
            RARCH_ERR("[Overlay]: Couldn't find overlay called: \"%s\".\n",
                  next);
            return 0;
         }
      }

      desc->next_index = (unsigned)next_idx;
   }

   return 1;
}
