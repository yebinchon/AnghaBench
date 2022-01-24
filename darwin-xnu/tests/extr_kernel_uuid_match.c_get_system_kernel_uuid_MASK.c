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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int /*<<< orphan*/  kuuid_line ;

/* Variables and functions */
 int MAX_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(uuid_t kuuid) {
	char kuuid_line[MAX_LEN];
	FUNC2(kuuid_line, 0, sizeof(kuuid_line));
	size_t len = sizeof(kuuid_line);
	int ret = FUNC3("kern.uuid", kuuid_line, &len, NULL, 0);
	FUNC0(ret, "sysctl kern.uuid");

	FUNC1(FUNC4(kuuid_line, kuuid) == 0,
			"Parse running kernel uuid");
}