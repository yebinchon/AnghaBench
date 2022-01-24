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
typedef  int /*<<< orphan*/  ccv_bbf_classifier_cascade_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned char) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(int argc, char** argv)
{
	FUNC0(argc >= 3);
	ccv_bbf_classifier_cascade_t* cascade = FUNC2(argv[1]);
	if (FUNC10(argv[2], "bin") == 0)
	{
		FUNC0(argc >= 4);
		int len = FUNC1(cascade, NULL, 0);
		char* s = FUNC8(len);
		FUNC1(cascade, s, len);
		FILE* w = FUNC5(argv[3], "w");
		FUNC7(s, 1, len, w);
		FUNC3(w);
		FUNC6(s);
	} else if (FUNC10(argv[2], "c") == 0) {
		FUNC11(cascade);
	} else if (FUNC10(argv[2], "json") == 0) {
		FUNC12(cascade);
	} else if (FUNC10(argv[2], "cbin") == 0) {
		int len = FUNC1(cascade, NULL, 0);
		char* s = FUNC8(len);
		FUNC1(cascade, s, len);
		int i;
		for (i = 0; i < len; i++)
			FUNC9("\\x%x", (unsigned char)s[i]);
		FUNC4(NULL);
		FUNC6(s);
	}
	return 0;
}