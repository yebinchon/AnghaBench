
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_URI_PARTS_T ;


 int LOG_ERROR (int *,char*,char const*) ;
 int LOG_INFO (int *,char*,char const*) ;
 int check_uri (int *,char const*) ;
 int dump_uri (int *) ;
 int vc_uri_parse (int *,char const*) ;

__attribute__((used)) static int test_parsing_uri(VC_URI_PARTS_T *uri, const char *original, const char *expected)
{
   bool parsed;

   LOG_INFO(((void*)0), "URI: <%s>", original);

   parsed = vc_uri_parse( uri, original );
   if (!parsed)
   {
      LOG_ERROR(((void*)0), "*** Expected <%s> to parse, but it didn't", original);
      return 1;
   }

   dump_uri(uri);

   return check_uri(uri, expected ? expected : original);
}
