
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int VC_URI_PARTS_T ;
struct TYPE_7__ {char* before; int * after; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int LOG_ERROR (int *,char*,...) ;
 int LOG_INFO (int *,char*) ;
 int getchar () ;
 TYPE_1__* test_build_uris ;
 scalar_t__ test_building_uri (int *,TYPE_1__*) ;
 TYPE_1__* test_merge_uris ;
 scalar_t__ test_merging_uri (int *,TYPE_1__*) ;
 scalar_t__ test_parameter_validation (int *) ;
 TYPE_1__* test_parse_uris ;
 scalar_t__ test_parsing_uri (int *,char*,int *) ;
 int * vc_uri_create () ;
 int vc_uri_release (int *) ;

int main(int argc, char **argv)
{
   VC_URI_PARTS_T *uri;
   int error_count = 0;
   size_t ii;

   uri = vc_uri_create();
   if (!uri)
   {
      LOG_ERROR(((void*)0), "*** Failed to create URI structure.");
      return 1;
   }

   LOG_INFO(((void*)0), "Test parameter validation");
   error_count += test_parameter_validation(uri);

   LOG_INFO(((void*)0), "Test parsing URIs:");
   for (ii = 0; ii < ARRAY_SIZE(test_parse_uris); ii++)
   {
      error_count += test_parsing_uri(uri, test_parse_uris[ii].before, test_parse_uris[ii].after);
   }

   LOG_INFO(((void*)0), "Test building URIs:");
   for (ii = 0; ii < ARRAY_SIZE(test_build_uris); ii++)
   {
      error_count += test_building_uri(uri, &test_build_uris[ii]);
   }

   LOG_INFO(((void*)0), "Test merging URIs:");
   for (ii = 0; ii < ARRAY_SIZE(test_merge_uris); ii++)
   {
      error_count += test_merging_uri(uri, &test_merge_uris[ii]);
   }

   if (argc > 1)
   {
      LOG_INFO(((void*)0), "Test parsing URIs from command line:");

      while (argc-- > 1)
      {


         error_count += test_parsing_uri(uri, argv[argc], ((void*)0));
      }
   }

   vc_uri_release(uri);

   if (error_count)
      LOG_ERROR(((void*)0), "*** %d errors reported", error_count);






   return error_count;
}
