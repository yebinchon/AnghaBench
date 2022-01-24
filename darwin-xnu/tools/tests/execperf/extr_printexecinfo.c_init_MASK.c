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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (char const*) ; 

__attribute__((constructor))
void FUNC2(int argc, const char *argv[], const char *envp[], const char *appl[], void *vars __attribute__((unused))) {
	int i;

	FUNC0("argv = %p\n", argv);
	for (i=0; argv[i]; i++) {
		FUNC0("argv[%2d] = %p %.100s%s\n", i, argv[i], argv[i], FUNC1(argv[i]) > 100 ? "..." : "");
	}
	FUNC0("envp = %p\n", envp);
	for (i=0; envp[i]; i++) {
		FUNC0("envp[%2d] = %p %.100s%s\n", i, envp[i], envp[i], FUNC1(envp[i]) > 100 ? "..." : "");
	}
	FUNC0("appl = %p\n", appl);
	for (i=0; appl[i]; i++) {
		FUNC0("appl[%2d] = %p %.100s%s\n", i, appl[i], appl[i], FUNC1(appl[i]) > 100 ? "..." : "");
	}
}