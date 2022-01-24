#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* priv; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  refcount; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMAL_EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

MMAL_STATUS_T FUNC2(MMAL_COMPONENT_T *component)
{
   if(!component)
      return MMAL_EINVAL;

   FUNC0("component %s(%d), refcount %i", component->name, component->id,
             component->priv->refcount);

   return FUNC1(component);
}