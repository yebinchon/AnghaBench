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
typedef  int /*<<< orphan*/  uri_designator ;
typedef  int /*<<< orphan*/  short_uri_designator ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*,int) ; 

__attribute__((used)) static int
FUNC1(const char *connstr)
{
	const char uri_designator[] = "postgresql://";
	const char short_uri_designator[] = "postgres://";

	if (FUNC0(connstr, uri_designator,
				sizeof(uri_designator) - 1) == 0)
		return sizeof(uri_designator) - 1;

	if (FUNC0(connstr, short_uri_designator,
				sizeof(short_uri_designator) - 1) == 0)
		return sizeof(short_uri_designator) - 1;

	return 0;
}