
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VC_URI_PARTS_T ;


 int LOG_DEBUG (int *,char*,char const*,...) ;
 char* vc_uri_fragment (int *) ;
 char* vc_uri_host (int *) ;
 int vc_uri_num_queries (int *) ;
 char* vc_uri_path (int *) ;
 char* vc_uri_port (int *) ;
 int vc_uri_query (int *,int ,char const**,char const**) ;
 char* vc_uri_scheme (int *) ;
 char* vc_uri_userinfo (int *) ;

__attribute__((used)) static void dump_uri(VC_URI_PARTS_T *uri)
{
   const char *str;
   uint32_t query_count, ii;

   str = vc_uri_scheme(uri);
   if (str)
      LOG_DEBUG(((void*)0), "Scheme: <%s>", str);

   str = vc_uri_userinfo(uri);
   if (str)
      LOG_DEBUG(((void*)0), "Userinfo: <%s>", str);

   str = vc_uri_host(uri);
   if (str)
      LOG_DEBUG(((void*)0), "Host: <%s>", str);

   str = vc_uri_port(uri);
   if (str)
      LOG_DEBUG(((void*)0), "Port: <%s>", str);

   str = vc_uri_path(uri);
   if (str)
      LOG_DEBUG(((void*)0), "Path: <%s>", str);

   query_count = vc_uri_num_queries(uri);
   for (ii = 0; ii < query_count; ii++)
   {
      const char *value;

      vc_uri_query(uri, ii, &str, &value);
      if (str)
      {
         if (value)
            LOG_DEBUG(((void*)0), "Query %d: <%s>=<%s>", ii, str, value);
         else
            LOG_DEBUG(((void*)0), "Query %d: <%s>", ii, str);
      }
   }

   str = vc_uri_fragment(uri);
   if (str)
      LOG_DEBUG(((void*)0), "Fragment: <%s>", str);
}
