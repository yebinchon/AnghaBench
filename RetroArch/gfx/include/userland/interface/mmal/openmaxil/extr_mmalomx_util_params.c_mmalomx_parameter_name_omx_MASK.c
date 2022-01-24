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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {char const* omx_name; } ;
typedef  TYPE_1__ MMALOMX_PARAM_TRANSLATION_T ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 

const char *FUNC1(uint32_t id)
{
   const MMALOMX_PARAM_TRANSLATION_T *xlat = FUNC0(id);
   return xlat ? xlat->omx_name : 0;
}