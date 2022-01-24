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
struct UPNPDev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct UPNPDev* FUNC2 (int,int*) ; 
 int FUNC3 (int,char const*) ; 

struct UPNPDev *
FUNC4(const char * devtype, const char * socketpath, int * error)
{
	struct UPNPDev * devlist = NULL;
	int s;
	int res;

	s = FUNC0(socketpath);
	if (s < 0) {
		if (error)
			*error = s;
		return NULL;
	}
	res = FUNC3(s, devtype);
	if (res < 0) {
		if (error)
			*error = res;
	} else {
		devlist = FUNC2(s, error);
	}
	FUNC1(s);
	return devlist;
}