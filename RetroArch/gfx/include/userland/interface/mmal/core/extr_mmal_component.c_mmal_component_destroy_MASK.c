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
struct TYPE_4__ {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMAL_EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

MMAL_STATUS_T FUNC2(MMAL_COMPONENT_T *component)
{
   if(!component)
      return MMAL_EINVAL;

   FUNC0("%s %d", component->name, component->id);

   return FUNC1(component);
}