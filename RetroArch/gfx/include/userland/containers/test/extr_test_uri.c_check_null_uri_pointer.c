
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int LOG_ERROR (int *,char*) ;
 char TEST_CHAR ;
 scalar_t__ vc_uri_add_query (int *,int *,int *) ;
 scalar_t__ vc_uri_build (int *,char*,int) ;
 int vc_uri_clear (int *) ;
 scalar_t__ vc_uri_fragment (int *) ;
 scalar_t__ vc_uri_host (int *) ;
 scalar_t__ vc_uri_num_queries (int *) ;
 scalar_t__ vc_uri_parse (int *,char*) ;
 scalar_t__ vc_uri_path (int *) ;
 scalar_t__ vc_uri_port (int *) ;
 int vc_uri_query (int *,int ,int *,int *) ;
 int vc_uri_release (int *) ;
 scalar_t__ vc_uri_scheme (int *) ;
 scalar_t__ vc_uri_set_fragment (int *,int *) ;
 scalar_t__ vc_uri_set_host (int *,int *) ;
 scalar_t__ vc_uri_set_path (int *,int *) ;
 scalar_t__ vc_uri_set_port (int *,int *) ;
 scalar_t__ vc_uri_set_scheme (int *,int *) ;
 scalar_t__ vc_uri_set_userinfo (int *,int *) ;
 scalar_t__ vc_uri_userinfo (int *) ;

__attribute__((used)) static int check_null_uri_pointer(void)
{
   int error_count = 0;
   char buffer[1];


   vc_uri_release( ((void*)0) );
   vc_uri_clear( ((void*)0) );
   if (vc_uri_parse( ((void*)0), ((void*)0) ))
      error_count++;
   if (vc_uri_parse( ((void*)0), "" ))
      error_count++;
   if (vc_uri_build( ((void*)0), ((void*)0), 0 ) != 0)
      error_count++;
   buffer[0] = TEST_CHAR;
   if (vc_uri_build( ((void*)0), buffer, sizeof(buffer) ) != 0)
      error_count++;
   if (buffer[0] != TEST_CHAR)
      error_count++;
   if (vc_uri_scheme( ((void*)0) ))
      error_count++;
   if (vc_uri_userinfo( ((void*)0) ))
      error_count++;
   if (vc_uri_host( ((void*)0) ))
      error_count++;
   if (vc_uri_port( ((void*)0) ))
      error_count++;
   if (vc_uri_path( ((void*)0) ))
      error_count++;
   if (vc_uri_fragment( ((void*)0) ))
      error_count++;
   if (vc_uri_num_queries( ((void*)0) ) != 0)
      error_count++;
   vc_uri_query( ((void*)0), 0, ((void*)0), ((void*)0) );
   if (vc_uri_set_scheme( ((void*)0), ((void*)0) ))
      error_count++;
   if (vc_uri_set_userinfo( ((void*)0), ((void*)0) ))
      error_count++;
   if (vc_uri_set_host( ((void*)0), ((void*)0) ))
      error_count++;
   if (vc_uri_set_port( ((void*)0), ((void*)0) ))
      error_count++;
   if (vc_uri_set_path( ((void*)0), ((void*)0) ))
      error_count++;
   if (vc_uri_set_fragment( ((void*)0), ((void*)0) ))
      error_count++;
   if (vc_uri_add_query( ((void*)0), ((void*)0), ((void*)0) ))
      error_count++;

   if (error_count)
      LOG_ERROR(((void*)0), "NULL URI parameter testing failed");

   return error_count;
}
