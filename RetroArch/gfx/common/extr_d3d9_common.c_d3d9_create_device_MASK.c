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
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  D3DPRESENT_PARAMETERS ;

/* Variables and functions */
 int /*<<< orphan*/  D3DCREATE_HARDWARE_VERTEXPROCESSING ; 
 int /*<<< orphan*/  D3DCREATE_SOFTWARE_VERTEXPROCESSING ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

bool FUNC1(void *dev,
      void *d3dpp,
      void *d3d,
      HWND focus_window,
      unsigned cur_mon_id)
{
   if (!FUNC0(dev,
            (D3DPRESENT_PARAMETERS*)d3dpp,
            d3d,
            focus_window,
            cur_mon_id,
            D3DCREATE_HARDWARE_VERTEXPROCESSING))
      if (!FUNC0(
               dev,
               (D3DPRESENT_PARAMETERS*)d3dpp, d3d, focus_window,
               cur_mon_id,
               D3DCREATE_SOFTWARE_VERTEXPROCESSING))
         return false;
   return true;
}