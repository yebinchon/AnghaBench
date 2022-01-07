
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_URI_PARTS_T ;


 int LOG_ERROR (int *,char*) ;
 char TEST_CHAR ;
 int * TEST_STRING ;
 scalar_t__ strlen (int *) ;
 scalar_t__ vc_uri_build (int *,char*,int) ;
 int vc_uri_set_path (int *,int *) ;

__attribute__((used)) static int check_build_parameters(VC_URI_PARTS_T *uri)
{
   int error_count = 0;
   char buffer[1];

   vc_uri_set_path( uri, TEST_STRING );

   if (vc_uri_build( uri, ((void*)0), 0 ) != strlen(TEST_STRING))
   {
      LOG_ERROR(((void*)0), "Retrieving URI length failed");
      error_count++;
   }

   buffer[0] = TEST_CHAR;
   if (vc_uri_build( uri, buffer, 1 ) != strlen(TEST_STRING))
   {
      LOG_ERROR(((void*)0), "Building URI to small buffer failed");
      error_count++;
   }
   if (buffer[0] != TEST_CHAR)
   {
      LOG_ERROR(((void*)0), "Building URI to small buffer modified buffer");
      error_count++;
   }

   vc_uri_set_path( uri, ((void*)0) );

   return error_count;
}
