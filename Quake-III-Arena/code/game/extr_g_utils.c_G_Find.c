
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int inuse; } ;
typedef TYPE_1__ gentity_t ;
typedef int byte ;
struct TYPE_7__ {size_t num_entities; } ;


 int Q_stricmp (char*,char const*) ;
 TYPE_1__* g_entities ;
 TYPE_2__ level ;

gentity_t *G_Find (gentity_t *from, int fieldofs, const char *match)
{
 char *s;

 if (!from)
  from = g_entities;
 else
  from++;

 for ( ; from < &g_entities[level.num_entities] ; from++)
 {
  if (!from->inuse)
   continue;
  s = *(char **) ((byte *)from + fieldofs);
  if (!s)
   continue;
  if (!Q_stricmp (s, match))
   return from;
 }

 return ((void*)0);
}
