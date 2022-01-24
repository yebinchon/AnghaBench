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
typedef  int /*<<< orphan*/  ref_buf ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(const char* filename)
{
    FILE* f = FUNC5(filename, "wb+");
    FUNC2(f);
    FUNC0(11, FUNC6(f, "0123456789\n"));
    FUNC0(0, FUNC8(f, -2, SEEK_CUR));
    FUNC0('9', FUNC4(f));
    FUNC0(0, FUNC8(f, 3, SEEK_SET));
    FUNC0('3', FUNC4(f));
    FUNC0(0, FUNC8(f, -3, SEEK_END));
    FUNC0('8', FUNC4(f));
    FUNC0(0, FUNC8(f, 0, SEEK_END));
    FUNC0(11, FUNC9(f));
    FUNC0(4, FUNC6(f, "abc\n"));
    FUNC0(0, FUNC8(f, 0, SEEK_END));
    FUNC0(15, FUNC9(f));
    FUNC0(0, FUNC8(f, 0, SEEK_SET));
    char buf[20];
    FUNC0(15, FUNC7(buf, 1, sizeof(buf), f));
    const char ref_buf[] = "0123456789\nabc\n";
    FUNC1(ref_buf, buf, sizeof(ref_buf) - 1);

    FUNC0(0, FUNC3(f));
}