#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int is_destroyed; scalar_t__ name; } ;
typedef  void KHRN_POINTER_MAP_T ;
typedef  TYPE_1__ EGL_CONTEXT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(KHRN_POINTER_MAP_T *map, uint32_t key, void *value, void *data)
{
   EGL_CONTEXT_T *context = (EGL_CONTEXT_T *)value;

   FUNC0(map);
   FUNC0(data);
   FUNC1(key);

   FUNC3( context != NULL );
   FUNC3((uintptr_t)key == (uintptr_t)context->name);

   FUNC3(!context->is_destroyed);

   context->is_destroyed = true;
   FUNC2(context);
}