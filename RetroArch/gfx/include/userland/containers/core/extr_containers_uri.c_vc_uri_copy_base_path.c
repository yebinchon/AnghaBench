
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int const VC_URI_PARTS_T ;


 int vc_uri_add_query (int const*,char const*,char const*) ;
 scalar_t__ vc_uri_num_queries (int const*) ;
 char* vc_uri_path (int const*) ;
 int vc_uri_query (int const*,scalar_t__,char const**,char const**) ;
 int vc_uri_set_path (int const*,char const*) ;

__attribute__((used)) static bool vc_uri_copy_base_path( const VC_URI_PARTS_T *base_uri,
      VC_URI_PARTS_T *relative_uri )
{
   const char *base_path = vc_uri_path(base_uri);


   if (!vc_uri_set_path(relative_uri, base_path))
      return 0;


   if (!vc_uri_num_queries(relative_uri))
   {
      uint32_t base_queries = vc_uri_num_queries(base_uri);
      const char *name, *value;
      uint32_t ii;

      for (ii = 0; ii < base_queries; ii++)
      {
         vc_uri_query(base_uri, ii, &name, &value);
         if (!vc_uri_add_query(relative_uri, name, value))
            return 0;
      }
   }

   return 1;
}
