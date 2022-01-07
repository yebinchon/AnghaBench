
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_ifinfo_entry {scalar_t__* host; scalar_t__* name; } ;
struct TYPE_3__ {unsigned int size; scalar_t__* entries; } ;
typedef TYPE_1__ net_ifinfo_t ;


 int free (scalar_t__*) ;

void net_ifinfo_free(net_ifinfo_t *list)
{
   unsigned k;

   if (!list)
      return;

   for (k = 0; k < list->size; k++)
   {
      struct net_ifinfo_entry *ptr =
         (struct net_ifinfo_entry*)&list->entries[k];

      if (*ptr->name)
         free(ptr->name);
      if (*ptr->host)
         free(ptr->host);

      ptr->name = ((void*)0);
      ptr->host = ((void*)0);
   }
   free(list->entries);
}
