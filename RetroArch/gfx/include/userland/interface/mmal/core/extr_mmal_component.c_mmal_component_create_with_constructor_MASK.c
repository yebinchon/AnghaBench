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
struct MMAL_COMPONENT_MODULE_T {int dummy; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/  (*) (char const*,int /*<<< orphan*/ *),struct MMAL_COMPONENT_MODULE_T*,int /*<<< orphan*/ **) ; 

MMAL_STATUS_T FUNC2(const char *name,
   MMAL_STATUS_T (*constructor)(const char *name, MMAL_COMPONENT_T *),
   struct MMAL_COMPONENT_MODULE_T *constructor_private,
   MMAL_COMPONENT_T **component)
{
   FUNC0("%s", name);
   return FUNC1(name, constructor, constructor_private, component);
}