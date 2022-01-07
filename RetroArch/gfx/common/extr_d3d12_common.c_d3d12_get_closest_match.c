
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int format_support ;
struct TYPE_4__ {scalar_t__ Format; scalar_t__ member_0; int Support1; int Support2; } ;
typedef scalar_t__ DXGI_FORMAT ;
typedef TYPE_1__ D3D12_FEATURE_DATA_FORMAT_SUPPORT ;
typedef int D3D12Device ;


 int D3D12CheckFeatureSupport (int ,int ,TYPE_1__*,int) ;
 int D3D12_FEATURE_FORMAT_SUPPORT ;
 scalar_t__ DXGI_FORMAT_UNKNOWN ;
 scalar_t__ SUCCEEDED (int ) ;
 int assert (scalar_t__) ;
 scalar_t__* dxgi_get_format_fallback_list (scalar_t__) ;

DXGI_FORMAT d3d12_get_closest_match(D3D12Device device, D3D12_FEATURE_DATA_FORMAT_SUPPORT* desired)
{
   DXGI_FORMAT default_list[] = { desired->Format, DXGI_FORMAT_UNKNOWN };
   DXGI_FORMAT* format = dxgi_get_format_fallback_list(desired->Format);

   if (!format)
      format = default_list;

   while (*format != DXGI_FORMAT_UNKNOWN)
   {
      D3D12_FEATURE_DATA_FORMAT_SUPPORT format_support = { *format };
      if (SUCCEEDED(D3D12CheckFeatureSupport(
                device, D3D12_FEATURE_FORMAT_SUPPORT, &format_support, sizeof(format_support))) &&
          ((format_support.Support1 & desired->Support1) == desired->Support1) &&
          ((format_support.Support2 & desired->Support2) == desired->Support2))
         break;
      format++;
   }
   assert(*format);
   return *format;
}
