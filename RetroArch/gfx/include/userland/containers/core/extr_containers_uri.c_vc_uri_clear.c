
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {int value; int name; } ;
typedef TYPE_1__ VC_URI_QUERY_T ;
struct TYPE_6__ {size_t num_queries; TYPE_1__* queries; int fragment; int path; int port; int host; int userinfo; int scheme; } ;
typedef TYPE_2__ VC_URI_PARTS_T ;


 int free (TYPE_1__*) ;
 int release_string (int *) ;

void vc_uri_clear( VC_URI_PARTS_T *p_uri )
{
   if (!p_uri)
      return;

   release_string(&p_uri->scheme);
   release_string(&p_uri->userinfo);
   release_string(&p_uri->host);
   release_string(&p_uri->port);
   release_string(&p_uri->path);
   release_string(&p_uri->fragment);

   if (p_uri->queries)
   {
      VC_URI_QUERY_T *queries = p_uri->queries;
      uint32_t count = p_uri->num_queries;

      while (count--)
      {
         release_string(&queries[count].name);
         release_string(&queries[count].value);
      }

      free(queries);
      p_uri->queries = ((void*)0);
      p_uri->num_queries = 0;
   }
}
