#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_9__ {char* path; int /*<<< orphan*/  dir_end; } ;
typedef  TYPE_1__ sqfs_traverse ;
typedef  scalar_t__ sqfs_err ;
struct TYPE_10__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ sqfs ;

/* Variables and functions */
 scalar_t__ SQFS_OK ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,scalar_t__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

int FUNC9(char* image) {
    sqfs_err err = SQFS_OK;
    sqfs_traverse trv;
    sqfs fs;
    
    ssize_t fs_offset = FUNC0(image);

    // error check
    if (fs_offset < 0)
        FUNC1("failed to read elf size");

    if ((err = FUNC5(&fs, image, fs_offset)))
        FUNC1("sqfs_open_image error");
    
    if ((err = FUNC8(&trv, &fs, FUNC4(&fs))))
        FUNC1("sqfs_traverse_open error");
    while (FUNC7(&trv, &err)) {
        if (!trv.dir_end) {
            FUNC2("%s\n", trv.path);
        }
    }
    if (err)
        FUNC1("sqfs_traverse_next error");
    FUNC6(&trv);
    
    FUNC3(fs.fd);
    return 0;
}