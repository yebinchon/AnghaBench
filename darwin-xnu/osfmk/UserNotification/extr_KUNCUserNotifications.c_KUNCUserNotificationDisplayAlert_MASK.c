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
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  UNDServerRef ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_SEND_INVALID_DEST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,unsigned int,char*,char*,char*,char*,char*,char*,char*,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

kern_return_t
FUNC4(
	int		alertTimeout,
	unsigned	flags,
	char		*iconPath,
	char		*soundPath,
	char		*localizationPath,
	char		*alertHeader,
	char		*alertMessage,
	char		*defaultButtonTitle,
	char		*alternateButtonTitle,
	char		*otherButtonTitle,
	unsigned	*responseFlags)
{
	UNDServerRef	UNDServer;
	
	UNDServer = FUNC3();
	if (FUNC0(UNDServer)) {
		kern_return_t	kr;
		kr = FUNC1(UNDServer,
				       alertTimeout,
				       flags,
				       iconPath,
				       soundPath,
				       localizationPath,
				       alertHeader,
				       alertMessage,
				       defaultButtonTitle,
				       alternateButtonTitle,
				       otherButtonTitle,
				       responseFlags);
		FUNC2(UNDServer);
		return kr;
	}
	return MACH_SEND_INVALID_DEST;
}