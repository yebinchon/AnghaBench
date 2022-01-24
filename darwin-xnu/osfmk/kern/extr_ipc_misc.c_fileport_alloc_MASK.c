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
struct fileglob {int dummy; } ;
typedef  scalar_t__ ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_kobject_t ;

/* Variables and functions */
 int /*<<< orphan*/  IKOT_FILEPORT ; 
 scalar_t__ IP_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

ipc_port_t
FUNC8(struct fileglob *fg)
{
	ipc_port_t fileport;
	ipc_port_t sendport;
	ipc_port_t notifyport;

	fileport = FUNC3();
	if (fileport == IP_NULL) {
		goto out;
	}

	FUNC2(fileport, (ipc_kobject_t)fg, IKOT_FILEPORT);
	FUNC1(fileport); /* unlocked by ipc_port_nsrequest */
	notifyport = FUNC5(fileport);
	FUNC6(fileport, 1, notifyport, &notifyport);

	sendport = FUNC4(fileport);
	if (!FUNC0(sendport)) {
		FUNC7("Couldn't allocate send right for fileport!\n");
	}

out:
	return fileport;
}