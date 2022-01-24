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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  netadr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sockaddr_in*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct sockaddr*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean	FUNC2 (const char *s, netadr_t *a)
{
	struct sockaddr_in sadr;
	
	if (!FUNC1 (s, (struct sockaddr *)&sadr))
		return qfalse;
	
	FUNC0 (&sadr, a);

	return qtrue;
}