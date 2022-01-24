#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t fileHandle_t ;
struct TYPE_4__ {int /*<<< orphan*/  o; int /*<<< orphan*/  z; } ;
struct TYPE_5__ {TYPE_1__ file; } ;
struct TYPE_6__ {scalar_t__ zipFile; TYPE_2__ handleFiles; } ;

/* Variables and functions */
 TYPE_3__* fsh ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ qtrue ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int		FUNC2( fileHandle_t f ) {
	int pos;
	if (fsh[f].zipFile == qtrue) {
		pos = FUNC1(fsh[f].handleFiles.file.z);
	} else {
		pos = FUNC0(fsh[f].handleFiles.file.o);
	}
	return pos;
}