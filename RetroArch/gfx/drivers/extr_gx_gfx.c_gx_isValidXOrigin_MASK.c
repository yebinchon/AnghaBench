#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int viWidth; } ;

/* Variables and functions */
 TYPE_1__ gx_mode ; 
 int gx_used_system_xOrigin ; 

__attribute__((used)) static bool FUNC0(int origin)
{
   if(origin < 0 || origin + gx_used_system_xOrigin < 0 ||
         gx_mode.viWidth + origin + gx_used_system_xOrigin > 720)
      return false;
   return true;
}