
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fdt; } ;
typedef TYPE_1__ DTBLOB_T ;


 char* fdt_get_name (int ,int,int *) ;
 int fdt_next_node (int ,int,int *) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

int dtoverlay_find_matching_node(DTBLOB_T *dtb, const char **node_names,
                                 int pos)
{
   while (1)
   {
      const char *node_name;
      pos = fdt_next_node(dtb->fdt, pos, ((void*)0));
      if (pos < 0)
         break;
      node_name = fdt_get_name(dtb->fdt, pos, ((void*)0));
      if (node_name)
      {
         int i;
         for (i = 0; node_names[i]; i++)
         {
            const char *node = node_names[i];
            int matchlen = strlen(node);
            if ((strncmp(node_name, node, matchlen) == 0) &&
                ((node[matchlen] == '\0') ||
                 (node[matchlen] == '@')))
               return pos;
         }
      }
   }
   return -1;
}
