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
struct disque_stat {scalar_t__ st_size; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct disque_stat*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 

int FUNC11(int argc, char **argv) {
    char *filename;
    int fix = 0;

    if (argc < 2) {
        FUNC7("Usage: %s [--fix] <file.aof>\n", argv[0]);
        FUNC1(1);
    } else if (argc == 2) {
        filename = argv[1];
    } else if (argc == 3) {
        if (FUNC9(argv[1],"--fix") != 0) {
            FUNC7("Invalid argument: %s\n", argv[1]);
            FUNC1(1);
        }
        filename = argv[2];
        fix = 1;
    } else {
        FUNC7("Invalid arguments\n");
        FUNC1(1);
    }

    FILE *fp = FUNC5(filename,"r+");
    if (fp == NULL) {
        FUNC7("Cannot open file: %s\n", filename);
        FUNC1(1);
    }

    struct disque_stat sb;
    if (FUNC0(FUNC4(fp),&sb) == -1) {
        FUNC7("Cannot stat file: %s\n", filename);
        FUNC1(1);
    }

    off_t size = sb.st_size;
    if (size == 0) {
        FUNC7("Empty file: %s\n", filename);
        FUNC1(1);
    }

    off_t pos = FUNC8(fp);
    off_t diff = size-pos;
    FUNC7("AOF analyzed: size=%lld, ok_up_to=%lld, diff=%lld\n",
        (long long) size, (long long) pos, (long long) diff);
    if (diff > 0) {
        if (fix) {
            char buf[2];
            FUNC7("This will shrink the AOF from %lld bytes, with %lld bytes, to %lld bytes\n",(long long)size,(long long)diff,(long long)pos);
            FUNC7("Continue? [y/N]: ");
            if (FUNC3(buf,sizeof(buf),stdin) == NULL ||
                FUNC10(buf,"y",1) != 0) {
                    FUNC7("Aborting...\n");
                    FUNC1(1);
            }
            if (FUNC6(FUNC4(fp), pos) == -1) {
                FUNC7("Failed to truncate AOF\n");
                FUNC1(1);
            } else {
                FUNC7("Successfully truncated AOF\n");
            }
        } else {
            FUNC7("AOF is not valid\n");
            FUNC1(1);
        }
    } else {
        FUNC7("AOF is valid\n");
    }

    FUNC2(fp);
    return 0;
}