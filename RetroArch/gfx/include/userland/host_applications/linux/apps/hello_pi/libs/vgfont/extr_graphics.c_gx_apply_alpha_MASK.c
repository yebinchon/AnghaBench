#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  double uint8_t ;
typedef  int int32_t ;
struct TYPE_4__ {scalar_t__ type; double alpha; } ;
typedef  TYPE_1__* GRAPHICS_RESOURCE_HANDLE ;

/* Variables and functions */
 scalar_t__ GX_PBUFFER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

int32_t FUNC1( GRAPHICS_RESOURCE_HANDLE resource_handle,
                        const uint8_t alpha )
{
   FUNC0(resource_handle);
   if (resource_handle->type != GX_PBUFFER)
   {
      FUNC0(0);
      return -1;
   }
   resource_handle->alpha = 1.0*alpha/255;
   return 0;
}