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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (size_t) ; 

int FUNC8(int argc, char** argv)
{
    FILE * fp;
    uint8_t *Data;
    size_t Size;

    if (argc != 2) {
        return 1;
    }
    //opens the file, get its size, and reads it into a buffer
    fp = FUNC2(argv[1], "rb");
    if (fp == NULL) {
        return 2;
    }
    if (FUNC5(fp, 0L, SEEK_END) != 0) {
        FUNC1(fp);
        return 2;
    }
    Size = FUNC6(fp);
    if (Size == (size_t) -1) {
        FUNC1(fp);
        return 2;
    }
    if (FUNC5(fp, 0L, SEEK_SET) != 0) {
        FUNC1(fp);
        return 2;
    }
    Data = FUNC7(Size);
    if (Data == NULL) {
        FUNC1(fp);
        return 2;
    }
    if (FUNC3(Data, Size, 1, fp) != 1) {
        FUNC1(fp);
        FUNC4(Data);
        return 2;
    }

    //lauch fuzzer
    FUNC0(Data, Size);
    FUNC4(Data);
    FUNC1(fp);
    return 0;
}