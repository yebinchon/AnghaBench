#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UINT ;
typedef  scalar_t__ DXGI_FORMAT ;
typedef  int /*<<< orphan*/  D3D11Device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 scalar_t__ DXGI_FORMAT_UNKNOWN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__* FUNC3 (scalar_t__) ; 

DXGI_FORMAT
FUNC4(D3D11Device device, DXGI_FORMAT desired_format, UINT desired_format_support)
{
   DXGI_FORMAT default_list[] = {desired_format, DXGI_FORMAT_UNKNOWN};
   DXGI_FORMAT* format = FUNC3(desired_format);

   if(!format)
      format = default_list;

   while (*format != DXGI_FORMAT_UNKNOWN)
   {
      UINT         format_support;
      if (FUNC1(FUNC0(device, *format, &format_support)) &&
            ((format_support & desired_format_support) == desired_format_support))
         break;
      format++;
   }
   FUNC2(*format);
   return *format;
}