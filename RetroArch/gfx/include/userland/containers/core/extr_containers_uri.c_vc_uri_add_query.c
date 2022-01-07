
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int * name; int * value; } ;
typedef TYPE_1__ VC_URI_QUERY_T ;
struct TYPE_6__ {int num_queries; TYPE_1__* queries; } ;
typedef TYPE_2__ VC_URI_PARTS_T ;


 scalar_t__ duplicate_string (char const*,int **) ;
 scalar_t__ malloc (int) ;
 scalar_t__ realloc (TYPE_1__*,int) ;
 int release_string (int **) ;

bool vc_uri_add_query( VC_URI_PARTS_T *p_uri, const char *name, const char *value )
{
   VC_URI_QUERY_T *queries;
   uint32_t count;

   if (!p_uri || !name)
      return 0;

   count = p_uri->num_queries;
   if (p_uri->queries)
      queries = (VC_URI_QUERY_T *)realloc(p_uri->queries, (count + 1) * sizeof(VC_URI_QUERY_T));
   else
      queries = (VC_URI_QUERY_T *)malloc(sizeof(VC_URI_QUERY_T));

   if (!queries)
      return 0;


   p_uri->queries = queries;
   queries[count].name = ((void*)0);
   queries[count].value = ((void*)0);

   if (duplicate_string(name, &queries[count].name))
   {
      if (duplicate_string(value, &queries[count].value))
      {

         p_uri->num_queries++;
         return 1;
      }

      release_string(&queries[count].name);
   }

   return 0;
}
