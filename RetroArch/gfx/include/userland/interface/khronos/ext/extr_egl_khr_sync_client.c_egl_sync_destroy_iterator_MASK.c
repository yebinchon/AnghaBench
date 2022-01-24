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
typedef  scalar_t__ uint32_t ;
typedef  void KHRN_POINTER_MAP_T ;
typedef  int /*<<< orphan*/  EGL_SYNC_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4
   (KHRN_POINTER_MAP_T *sync_map, uint32_t sync, void *sync_handle, void *data)
{
   EGL_SYNC_T *sync_ptr = (EGL_SYNC_T *) sync;

   FUNC0(sync_map);
   FUNC0(sync_handle);
   FUNC0(data);

   FUNC3(sync_ptr != NULL);

   FUNC1(sync_ptr);
   FUNC2(sync_ptr);
}