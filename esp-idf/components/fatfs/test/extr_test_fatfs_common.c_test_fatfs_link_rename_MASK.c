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
typedef  int /*<<< orphan*/  name_src ;
typedef  int /*<<< orphan*/  name_dst ;
typedef  int /*<<< orphan*/  name_copy ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EOF ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

void FUNC13(const char* filename_prefix)
{
    char name_copy[64];
    char name_dst[64];
    char name_src[64];
    FUNC11(name_copy, sizeof(name_copy), "%s_cpy.txt", filename_prefix);
    FUNC11(name_dst, sizeof(name_dst), "%s_dst.txt", filename_prefix);
    FUNC11(name_src, sizeof(name_src), "%s_src.txt", filename_prefix);

    FUNC12(name_copy);
    FUNC12(name_dst);
    FUNC12(name_src);

    FILE* f = FUNC5(name_src, "w+");
    FUNC2(f);
    const char* str = "0123456789";
    for (int i = 0; i < 4000; ++i) {
        FUNC1(EOF, FUNC6(str, f));
    }
    FUNC0(0, FUNC4(f));
    FUNC0(0, FUNC9(name_src, name_copy));
    FILE* fcopy = FUNC5(name_copy, "r");
    FUNC2(fcopy);
    FUNC0(0, FUNC7(fcopy, 0, SEEK_END));
    FUNC0(40000, FUNC8(fcopy));
    FUNC0(0, FUNC4(fcopy));
    FUNC0(0, FUNC10(name_copy, name_dst));
    FUNC3(FUNC5(name_copy, "r"));
    FILE* fdst = FUNC5(name_dst, "r");
    FUNC2(fdst);
    FUNC0(0, FUNC7(fdst, 0, SEEK_END));
    FUNC0(40000, FUNC8(fdst));
    FUNC0(0, FUNC4(fdst));
}