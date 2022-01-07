
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int VC_URI_PARTS_T ;


 int build_uri (int const*,char*,size_t) ;
 size_t calculate_uri_length (int const*) ;

uint32_t vc_uri_build( const VC_URI_PARTS_T *p_uri, char *buffer, size_t buffer_size )
{
   uint32_t required_length;

   if (!p_uri)
      return 0;

   required_length = calculate_uri_length(p_uri);
   if (buffer && required_length < buffer_size)
      build_uri(p_uri, buffer, buffer_size);

   return required_length;
}
