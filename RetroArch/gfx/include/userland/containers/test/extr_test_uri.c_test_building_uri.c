
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VC_URI_PARTS_T ;
struct TYPE_3__ {char** queries; int expected_uri; int fragment; int path; int port; int host; int userinfo; int scheme; } ;
typedef TYPE_1__ BUILD_URI_T ;


 int LOG_ERROR (int *,char*) ;
 int LOG_INFO (int *,char*,int ) ;
 int check_uri (int *,int ) ;
 int dump_uri (int *) ;
 int vc_uri_add_query (int *,char const*,char const*) ;
 int vc_uri_clear (int *) ;
 int vc_uri_set_fragment (int *,int ) ;
 int vc_uri_set_host (int *,int ) ;
 int vc_uri_set_path (int *,int ) ;
 int vc_uri_set_port (int *,int ) ;
 int vc_uri_set_scheme (int *,int ) ;
 int vc_uri_set_userinfo (int *,int ) ;

__attribute__((used)) static int test_building_uri(VC_URI_PARTS_T *uri, BUILD_URI_T *uri_data)
{
   const char **p_str;
   const char *name, *value;

   LOG_INFO(((void*)0), "Building URI <%s>", uri_data->expected_uri);

   vc_uri_clear(uri);

   if (!vc_uri_set_scheme(uri, uri_data->scheme))
   {
      LOG_ERROR(((void*)0), "*** Failed to set scheme");
      return 1;
   }

   if (!vc_uri_set_userinfo(uri, uri_data->userinfo))
   {
      LOG_ERROR(((void*)0), "*** Failed to set userinfo");
      return 1;
   }

   if (!vc_uri_set_host(uri, uri_data->host))
   {
      LOG_ERROR(((void*)0), "*** Failed to set host");
      return 1;
   }

   if (!vc_uri_set_port(uri, uri_data->port))
   {
      LOG_ERROR(((void*)0), "*** Failed to set port");
      return 1;
   }

   if (!vc_uri_set_path(uri, uri_data->path))
   {
      LOG_ERROR(((void*)0), "*** Failed to set path");
      return 1;
   }

   if (!vc_uri_set_fragment(uri, uri_data->fragment))
   {
      LOG_ERROR(((void*)0), "*** Failed to set fragment");
      return 1;
   }

   p_str = uri_data->queries;
   name = *p_str++;

   while (name)
   {
      value = *p_str++;
      if (!vc_uri_add_query(uri, name, value))
      {
         LOG_ERROR(((void*)0), "*** Failed to add query");
         return 1;
      }
      name = *p_str++;
   }

   dump_uri(uri);

   return check_uri(uri, uri_data->expected_uri);
}
