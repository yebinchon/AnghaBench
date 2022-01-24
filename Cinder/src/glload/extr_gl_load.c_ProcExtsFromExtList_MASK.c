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
typedef  scalar_t__ GLint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_EXTENSIONS ; 
 int /*<<< orphan*/  GL_NUM_EXTENSIONS ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3()
{
	GLint iLoop;
	GLint iNumExtensions = 0;
	FUNC1(GL_NUM_EXTENSIONS, &iNumExtensions);

	for(iLoop = 0; iLoop < iNumExtensions; iLoop++)
	{
		const char *strExtensionName = (const char *)FUNC2(GL_EXTENSIONS, iLoop);
		FUNC0(strExtensionName);
	}
}