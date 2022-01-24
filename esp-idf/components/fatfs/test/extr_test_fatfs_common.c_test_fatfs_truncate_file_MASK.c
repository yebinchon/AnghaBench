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
typedef  int /*<<< orphan*/  output ;
typedef  int /*<<< orphan*/  input ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC6 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char const*) ; 
 int FUNC9 (char const*,int) ; 

void FUNC10(const char* filename)
{
    int read = 0;
    int truncated_len = 0;

    const char input[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    char output[sizeof(input)];

    FILE* f = FUNC4(filename, "wb");

    FUNC2(f);
    FUNC0(FUNC8(input), FUNC5(f, input));

    FUNC0(0, FUNC3(f));


    // Extending file beyond size is not supported
    FUNC0(-1, FUNC9(filename, FUNC8(input) + 1));
    FUNC0(errno, EPERM);

    FUNC0(-1, FUNC9(filename, -1));
    FUNC0(errno, EPERM);


    // Truncating should succeed
    const char truncated_1[] = "ABCDEFGHIJ";
    truncated_len = FUNC8(truncated_1);

    FUNC0(0, FUNC9(filename, truncated_len));

    f = FUNC4(filename, "rb");
    FUNC2(f);
    
    FUNC7(output, 0, sizeof(output));
    read = FUNC6(output, 1, sizeof(output), f);
    
    FUNC0(truncated_len, read);
    FUNC1(truncated_1, output, truncated_len);

    FUNC0(0, FUNC3(f));


    // Once truncated, the new file size should be the basis 
    // whether truncation should succeed or not
    FUNC0(-1, FUNC9(filename, truncated_len + 1));
    FUNC0(EPERM, errno);

    FUNC0(-1, FUNC9(filename, FUNC8(input)));
    FUNC0(EPERM, errno);

    FUNC0(-1, FUNC9(filename, FUNC8(input) + 1));
    FUNC0(EPERM, errno);

    FUNC0(-1, FUNC9(filename, -1));
    FUNC0(EPERM, errno);


    // Truncating a truncated file should succeed
    const char truncated_2[] = "ABCDE";
    truncated_len = FUNC8(truncated_2);

    FUNC0(0, FUNC9(filename, truncated_len));

    f = FUNC4(filename, "rb");
    FUNC2(f);
    
    FUNC7(output, 0, sizeof(output));
    read = FUNC6(output, 1, sizeof(output), f);
    
    FUNC0(truncated_len, read);
    FUNC1(truncated_2, output, truncated_len);

    FUNC0(0, FUNC3(f));
}