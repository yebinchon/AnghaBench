
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_5__ {unsigned int num_queries; TYPE_1__* queries; } ;
typedef TYPE_2__ VC_URI_PARTS_T ;
struct TYPE_4__ {char* value; int name; } ;


 int strcmp (char const*,int ) ;

bool vc_uri_find_query( VC_URI_PARTS_T *p_uri, uint32_t *p_index, const char *name, const char **p_value )
{
   unsigned int i = p_index ? *p_index : 0;

   if (!p_uri)
      return 0;

   for (; name && i < p_uri->num_queries; i++)
   {
      if (!strcmp(name, p_uri->queries[i].name))
      {
         if (p_value)
            *p_value = p_uri->queries[i].value;
         if (p_index)
            *p_index = i;
         return 1;
      }
   }

   return 0;
}
