
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int VC_URI_PARTS_T ;


 int LOG_ERROR (int *,char*,char*,...) ;
 int free (char*) ;
 scalar_t__ malloc (scalar_t__) ;
 scalar_t__ strcmp (char*,char const*) ;
 int vc_uri_build (int *,char*,scalar_t__) ;

__attribute__((used)) static int check_uri(VC_URI_PARTS_T *uri, const char *expected)
{
   uint32_t built_len;
   char *built;

   built_len = vc_uri_build(uri, ((void*)0), 0) + 1;
   built = (char *)malloc(built_len);
   if (!built)
   {
      LOG_ERROR(((void*)0), "*** Unexpected memory allocation failure: %d bytes", built_len);
      return 1;
   }

   vc_uri_build(uri, built, built_len);

   if (strcmp(built, expected) != 0)
   {
      LOG_ERROR(((void*)0), "*** Built URI <%s>\nexpected  <%s>", built, expected);
      free(built);
      return 1;
   }

   free(built);

   return 0;
}
