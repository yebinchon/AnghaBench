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
struct dbginterface {scalar_t__ fhndl; } ;

/* Variables and functions */
 scalar_t__ listensock ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct dbginterface *device)
{
	if(listensock>=0 && (device->fhndl<0 ))
		device->fhndl = FUNC0(listensock);

	if(device->fhndl<0)
		return -1;
	else
		FUNC1(device->fhndl);

	return 0;
}