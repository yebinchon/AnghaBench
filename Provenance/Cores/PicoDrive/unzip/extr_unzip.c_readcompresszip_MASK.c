#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct zipent {int /*<<< orphan*/  compressed_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  zip; int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ ZIP ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_CORRUPT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,struct zipent*) ; 

int FUNC3(ZIP* zip, struct zipent* ent, char* data) {
	int err = FUNC2(zip,ent);
	if (err!=0)
		return err;

	if (FUNC1(data, ent->compressed_size, 1, zip->fp)!=1) {
		FUNC0 ("Reading compressed data", ERROR_CORRUPT, zip->zip);
		return -1;
	}

	return 0;
}