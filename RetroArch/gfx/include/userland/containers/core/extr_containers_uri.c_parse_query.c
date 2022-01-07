
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int VC_URI_QUERY_T ;
struct TYPE_4__ {int * queries; } ;
typedef TYPE_1__ VC_URI_PARTS_T ;


 scalar_t__ malloc (size_t) ;
 int store_query (TYPE_1__*,char const*,char const*,char const*) ;

__attribute__((used)) static bool parse_query( VC_URI_PARTS_T *p_uri, const char *str, uint32_t str_len )
{
   uint32_t ii;
   uint32_t query_count;
   VC_URI_QUERY_T *queries;
   const char *name_start = str;
   const char *equals_ptr = ((void*)0);
   char c;

   if (!str_len)
      return 1;


   query_count = 1;
   for (ii = 0; ii < str_len; ii++)
   {
      c = str[ii];

      if (c == '&' || c ==';')
         query_count++;
   }

   queries = (VC_URI_QUERY_T *)malloc(query_count * sizeof(VC_URI_QUERY_T));
   if (!queries)
      return 0;

   p_uri->queries = queries;


   for (ii = 0; ii < str_len; ii++)
   {
      c = *str;


      if (c == '=' && !equals_ptr)
         equals_ptr = str;


      if (c == '&' || c ==';')
      {
         if (!store_query(p_uri, name_start, equals_ptr, str))
            return 0;

         equals_ptr = ((void*)0);
         name_start = str + 1;
      }

      str++;
   }

   return store_query(p_uri, name_start, equals_ptr, str);
}
