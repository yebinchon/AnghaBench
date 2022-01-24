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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  environ ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int FUNC4 (int*,char* const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,float*,char*) ; 
 char* FUNC7 (char*,char*) ; 
 int FUNC8 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(void)
{
#if CONFIG_EMBEDDED
	int spawn_ret, pid;
	char *const clpcctrl_args[] = {"/usr/local/bin/clpcctrl", "-f", "5000", NULL};

	T_LOG("Setting cpu frequency to %d\n", 5000);

	spawn_ret = posix_spawn(&pid, clpcctrl_args[0], NULL, NULL, clpcctrl_args, environ);
	waitpid(pid, &spawn_ret, 0);

#else /*CONFIG_EMBEDDED*/

	int spawn_ret, pid;
	int ret, nom_freq;
	size_t len;
	float val;
	char scale;
	char *buffer, *cpu_freq;
	char str_val[10];

	ret = FUNC8("machdep.cpu.brand_string", NULL, &len, NULL, 0);
	T_QUIET;FUNC0(ret, "sysctlbyname machdep.cpu.brand_string");

	buffer = FUNC3(len+2);
	ret = FUNC8("machdep.cpu.brand_string", buffer, &len, NULL, 0);
	T_QUIET;FUNC0(ret, "sysctlbyname machdep.cpu.brand_string");
	buffer[len+1] = '\0';

	cpu_freq = FUNC7(buffer, "CPU @ ");
	if (cpu_freq == NULL) {
		FUNC1("Could not fix frequency, %s field not present\n", "CPU @ ");
		goto out;
	}

	if (FUNC7(cpu_freq, "Hz") != NULL) {
		FUNC6(cpu_freq, "CPU @ %f%cHz", &val, &scale);
	} else {
		if (FUNC7(cpu_freq, "hz") != NULL) {
			FUNC6(cpu_freq, "CPU @ %f%chz", &val, &scale);
		} else {
			FUNC1("Could not fix frequency, %s field not present\n", "Hz");
			goto out;
		}
	}

	switch(scale){
	case 'M':
	case 'm':
		nom_freq = (int) val;
		break;
	case 'G':
	case 'g':
		nom_freq = (int) (val*1000);
		break;
	default:
		FUNC1("Could not fix frequency, scale field is %c\n", scale);
		goto out;
	}

	FUNC5(str_val, 10, "%d", nom_freq);
	FUNC1("Setting min and max cpu frequency to %d (%s)\n", nom_freq, str_val);
	char *xcpm_args[] = {"/usr/local/bin/xcpm", "limits", str_val, str_val, NULL};
	spawn_ret = FUNC4(&pid, xcpm_args[0], NULL, NULL, xcpm_args, environ);
	FUNC9(pid, &spawn_ret, 0);

out:
	FUNC2(buffer);
	return;
#endif /*CONFIG_EMBEDDED*/
}