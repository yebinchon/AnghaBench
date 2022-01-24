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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EOF ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 

void FUNC10(const char* filename)
{
    /* Create new file with 'aaaa' */
    FUNC9(filename, "aaaa");

    /* Append 'bbbb' to file */
    FILE *f_a = FUNC6(filename, "a");
    FUNC3(f_a);
    FUNC2(EOF, FUNC7("bbbb", f_a));
    FUNC0(0, FUNC5(f_a));

    /* Read back 8 bytes from file, verify it's 'aaaabbbb' */
    char buf[10] = { 0 };
    FILE *f_r = FUNC6(filename, "r");
    FUNC3(f_r);
    FUNC0(8, FUNC8(buf, 1, 8, f_r));
    FUNC1("aaaabbbb", buf, 8);

    /* Be sure we're at end of file */
    FUNC0(0, FUNC8(buf, 1, 8, f_r));

    FUNC0(0, FUNC5(f_r));

    /* Overwrite file with 'cccc' */
    FUNC9(filename, "cccc");

    /* Verify file now only contains 'cccc' */
    f_r = FUNC6(filename, "r");
    FUNC3(f_r);
    FUNC4(buf, sizeof(buf));
    FUNC0(4, FUNC8(buf, 1, 8, f_r)); // trying to read 8 bytes, only expecting 4
    FUNC1("cccc", buf, 4);
    FUNC0(0, FUNC5(f_r));
}