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
struct TYPE_2__ {int /*<<< orphan*/ * configstrings; } ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 size_t CS_MODELS ; 
 int /*<<< orphan*/  MAX_MODELS ; 
 TYPE_1__ aasworld ; 

int FUNC1(char *modelname)
{
	return FUNC0("IndexFromModel", &aasworld.configstrings[CS_MODELS], MAX_MODELS, modelname);
}