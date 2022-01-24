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
struct TYPE_9__ {char* path; int /*<<< orphan*/  dir_end; } ;
typedef  TYPE_1__ sqfs_traverse ;
typedef  scalar_t__ sqfs_err ;
struct TYPE_10__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ sqfs ;

/* Variables and functions */
 scalar_t__ SQFS_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,scalar_t__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

int FUNC8(char* image) {
	sqfs_err err = SQFS_OK;
	sqfs_traverse trv;
	sqfs fs;

	if ((err = FUNC4(&fs, image, 0)))
		FUNC0("sqfs_open_image error");
	
	if ((err = FUNC7(&trv, &fs, FUNC3(&fs))))
		FUNC0("sqfs_traverse_open error");
	while (FUNC6(&trv, &err)) {
		if (!trv.dir_end) {
			FUNC1("%s\n", trv.path);
		}
	}
	if (err)
		FUNC0("sqfs_traverse_next error");
	FUNC5(&trv);
	
	FUNC2(fs.fd);
	return 0;
}