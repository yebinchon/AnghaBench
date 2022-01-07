
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_URI_PARTS_T ;


 int LOG_ERROR (int *,char*) ;
 int * TEST_NAME ;
 int * TEST_STRING ;
 int * TEST_VALUE ;
 scalar_t__ strcmp (int *,char const*) ;
 scalar_t__ vc_uri_add_query (int *,int *,int *) ;
 char* vc_uri_fragment (int *) ;
 char* vc_uri_host (int *) ;
 int vc_uri_num_queries (int *) ;
 char* vc_uri_path (int *) ;
 char* vc_uri_port (int *) ;
 int vc_uri_query (int *,int,char const**,char const**) ;
 char* vc_uri_scheme (int *) ;
 scalar_t__ vc_uri_set_fragment (int *,int *) ;
 scalar_t__ vc_uri_set_host (int *,int *) ;
 scalar_t__ vc_uri_set_path (int *,int *) ;
 scalar_t__ vc_uri_set_port (int *,int *) ;
 scalar_t__ vc_uri_set_scheme (int *,int *) ;
 scalar_t__ vc_uri_set_userinfo (int *,int *) ;
 char* vc_uri_userinfo (int *) ;

__attribute__((used)) static int check_accessors(VC_URI_PARTS_T *uri)
{
   int error_count = 0;
   const char *str;

   if (vc_uri_set_scheme( uri, TEST_STRING ))
   {
      str = vc_uri_scheme(uri);
      if (!str || strcmp(TEST_STRING, str))
         error_count++;
      if (!vc_uri_set_scheme( uri, ((void*)0) ))
         error_count++;
      if (vc_uri_scheme(uri))
         error_count++;
   } else
      error_count++;

   if (vc_uri_set_userinfo( uri, TEST_STRING ))
   {
      str = vc_uri_userinfo(uri);
      if (!str || strcmp(TEST_STRING, str))
         error_count++;
      if (!vc_uri_set_userinfo( uri, ((void*)0) ))
         error_count++;
      if (vc_uri_userinfo(uri))
         error_count++;
   } else
      error_count++;

   if (vc_uri_set_host( uri, TEST_STRING ))
   {
      str = vc_uri_host(uri);
      if (!str || strcmp(TEST_STRING, str))
         error_count++;
      if (!vc_uri_set_host( uri, ((void*)0) ))
         error_count++;
      if (vc_uri_host(uri))
         error_count++;
   } else
      error_count++;

   if (vc_uri_set_port( uri, TEST_STRING ))
   {
      str = vc_uri_port(uri);
      if (!str || strcmp(TEST_STRING, str))
         error_count++;
      if (!vc_uri_set_port( uri, ((void*)0) ))
         error_count++;
      if (vc_uri_port(uri))
         error_count++;
   } else
      error_count++;

   if (vc_uri_set_path( uri, TEST_STRING ))
   {
      str = vc_uri_path(uri);
      if (!str || strcmp(TEST_STRING, str))
         error_count++;
      if (!vc_uri_set_path( uri, ((void*)0) ))
         error_count++;
      if (vc_uri_path(uri))
         error_count++;
   } else
      error_count++;

   if (vc_uri_set_fragment( uri, TEST_STRING ))
   {
      str = vc_uri_fragment(uri);
      if (!str || strcmp(TEST_STRING, str))
         error_count++;
      if (!vc_uri_set_fragment( uri, ((void*)0) ))
         error_count++;
      if (vc_uri_fragment(uri))
         error_count++;
   } else
      error_count++;

   if (vc_uri_add_query( uri, ((void*)0), ((void*)0) ))
      error_count++;
   if (vc_uri_add_query( uri, ((void*)0), TEST_VALUE ))
      error_count++;
   if (!vc_uri_add_query( uri, TEST_STRING, ((void*)0) ))
      error_count++;
   if (!vc_uri_add_query( uri, TEST_NAME, TEST_VALUE ))
      error_count++;

   if (vc_uri_num_queries(uri) == 2)
   {
      const char *name = ((void*)0), *value = ((void*)0);

      vc_uri_query(uri, 0, &name, &value);
      if (!name || strcmp(TEST_STRING, name))
         error_count++;
      if (value)
         error_count++;

      vc_uri_query(uri, 1, &name, &value);
      if (!name || strcmp(TEST_NAME, name))
         error_count++;
      if (!value || strcmp(TEST_VALUE, value))
         error_count++;
   } else
      error_count++;

   if (error_count)
      LOG_ERROR(((void*)0), "Accessors failed");

   return error_count;
}
