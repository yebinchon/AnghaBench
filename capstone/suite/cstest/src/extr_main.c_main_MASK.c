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
 int e_flag ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(int argc, char *argv[])
{
	int opt, flag;

	flag = 0;
	e_flag = 0;

	while ((opt = FUNC1(argc, argv, "ef:d:")) > 0) {
		switch (opt) {
			case 'f':
				FUNC3(optarg);
				flag = 1;
				break;
			case 'd':
				FUNC4(optarg);
				flag = 1;
				break;
			case 'e':
				e_flag = 1;
				break;
			default:
				FUNC2("Usage: %s [-e] [-f <file_name.cs>] [-d <directory>]\n", argv[0]);
				FUNC0(-1);
		}
	}

	if (flag == 0) {
		FUNC2("Usage: %s [-e] [-f <file_name.cs>] [-d <directory>]\n", argv[0]);
		FUNC0(-1);
	}

	return 0;
}