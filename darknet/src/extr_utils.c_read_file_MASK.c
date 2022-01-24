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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 unsigned char* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 

unsigned char *FUNC6(char *filename)
{
    FILE *fp = FUNC2(filename, "rb");
    size_t size;

    FUNC4(fp, 0, SEEK_END); 
    size = FUNC5(fp);
    FUNC4(fp, 0, SEEK_SET); 

    unsigned char *text = FUNC0(size+1, sizeof(char));
    FUNC3(text, 1, size, fp);
    FUNC1(fp);
    return text;
}