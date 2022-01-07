
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {char* name; char* value; } ;
typedef TYPE_1__ VC_URI_QUERY_T ;
struct TYPE_5__ {int num_queries; TYPE_1__* queries; } ;
typedef TYPE_2__ VC_URI_PARTS_T ;


 char* create_unescaped_string (char const*,int) ;
 int free (char*) ;

__attribute__((used)) static bool store_query( VC_URI_PARTS_T *p_uri, const char *name_start,
      const char *equals_ptr, const char *query_end)
{
   uint32_t name_len, value_len;

   if (equals_ptr)
   {
      name_len = equals_ptr - name_start;
      value_len = query_end - equals_ptr - 1;
   } else {
      name_len = query_end - name_start;
      value_len = 0;
   }


   if (name_len)
   {
      char *name, *value = ((void*)0);
      VC_URI_QUERY_T *p_query;

      if (equals_ptr)
      {
         value = create_unescaped_string(equals_ptr + 1, value_len);
         if (!value)
            return 0;
         equals_ptr = query_end;
      }

      name = create_unescaped_string(name_start, name_len);
      if (!name)
      {
         if (value)
            free(value);
         return 0;
      }


      p_query = &p_uri->queries[ p_uri->num_queries++ ];
      p_query->name = name;
      p_query->value = value;
   }

   return 1;
}
