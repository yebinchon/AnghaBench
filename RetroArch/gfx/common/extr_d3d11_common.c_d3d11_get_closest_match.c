
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ DXGI_FORMAT ;
typedef int D3D11Device ;


 int D3D11CheckFormatSupport (int ,scalar_t__,int*) ;
 scalar_t__ DXGI_FORMAT_UNKNOWN ;
 scalar_t__ SUCCEEDED (int ) ;
 int assert (scalar_t__) ;
 scalar_t__* dxgi_get_format_fallback_list (scalar_t__) ;

DXGI_FORMAT
d3d11_get_closest_match(D3D11Device device, DXGI_FORMAT desired_format, UINT desired_format_support)
{
   DXGI_FORMAT default_list[] = {desired_format, DXGI_FORMAT_UNKNOWN};
   DXGI_FORMAT* format = dxgi_get_format_fallback_list(desired_format);

   if(!format)
      format = default_list;

   while (*format != DXGI_FORMAT_UNKNOWN)
   {
      UINT format_support;
      if (SUCCEEDED(D3D11CheckFormatSupport(device, *format, &format_support)) &&
            ((format_support & desired_format_support) == desired_format_support))
         break;
      format++;
   }
   assert(*format);
   return *format;
}
