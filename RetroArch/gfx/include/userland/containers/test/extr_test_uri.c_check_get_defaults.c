
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int VC_URI_PARTS_T ;


 int LOG_ERROR (int *,char*) ;
 char* TEST_STRING ;
 int vc_uri_build (int *,char*,int) ;
 scalar_t__ vc_uri_fragment (int *) ;
 scalar_t__ vc_uri_host (int *) ;
 scalar_t__ vc_uri_num_queries (int *) ;
 scalar_t__ vc_uri_path (int *) ;
 scalar_t__ vc_uri_port (int *) ;
 int vc_uri_query (int *,int ,char const**,char const**) ;
 scalar_t__ vc_uri_scheme (int *) ;
 scalar_t__ vc_uri_userinfo (int *) ;

__attribute__((used)) static int check_get_defaults(VC_URI_PARTS_T *uri)
{
   int error_count = 0;
   const char *name = ((void*)0), *value = ((void*)0);
   char buffer[1];

   if (vc_uri_scheme( uri ))
      error_count++;
   if (vc_uri_userinfo( uri ))
      error_count++;
   if (vc_uri_host( uri ))
      error_count++;
   if (vc_uri_port( uri ))
      error_count++;
   if (vc_uri_path( uri ))
      error_count++;
   if (vc_uri_fragment( uri ))
      error_count++;
   if (vc_uri_num_queries( uri ) != 0)
      error_count++;

   vc_uri_query( uri, 0, &name, &value );
   if (name != ((void*)0) || value != ((void*)0))
      error_count++;

   if (vc_uri_build(uri, ((void*)0), 0) != 0)
      error_count++;
   buffer[0] = ~*TEST_STRING;
   vc_uri_build(uri, buffer, sizeof(buffer));
   if (buffer[0] != '\0')
      error_count++;

   if (error_count)
      LOG_ERROR(((void*)0), "Getting default values gave unexpected values");

   return error_count;
}
