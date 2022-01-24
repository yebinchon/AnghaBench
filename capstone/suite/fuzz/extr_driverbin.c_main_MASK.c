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
struct dirent {scalar_t__ d_type; int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 struct dirent* FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(int argc, char** argv)
{
    FILE * fp;
    uint8_t Data[0x1000];
    size_t Size;
    DIR *d;
    struct dirent *dir;
    int r = 0;

    if (argc != 2) {
        return 1;
    }

    d = FUNC8(argv[1]);
    if (d == NULL) {
        FUNC9("Invalid directory\n");
        return 2;
    }
    if (FUNC1(argv[1]) != 0) {
        FUNC2(d);
        FUNC9("Invalid directory\n");
        return 2;
    }

    while((dir = FUNC10(d)) != NULL) {
        //opens the file, get its size, and reads it into a buffer
        if (dir->d_type != DT_REG) {
            continue;
        }
        //printf("Running %s\n", dir->d_name);
        fp = FUNC4(dir->d_name, "rb");
        if (fp == NULL) {
            r = 3;
            break;
        }
        if (FUNC6(fp, 0L, SEEK_END) != 0) {
            FUNC3(fp);
            r = 4;
            break;
        }
        Size = FUNC7(fp);
        if (Size == (size_t) -1) {
            FUNC3(fp);
            r = 5;
            break;
        } else if (Size > 0x1000) {
            FUNC3(fp);
            continue;
        }
        if (FUNC6(fp, 0L, SEEK_SET) != 0) {
            FUNC3(fp);
            r = 7;
            break;
        }
        if (FUNC5(Data, Size, 1, fp) != 1) {
            FUNC3(fp);
            r = 8;
            break;
        }

        //lauch fuzzer
        FUNC0(Data, Size);
        FUNC3(fp);
    }
    FUNC2(d);
    return r;
}