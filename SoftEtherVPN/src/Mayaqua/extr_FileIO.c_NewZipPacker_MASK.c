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
struct TYPE_4__ {int /*<<< orphan*/ * CurrentFile; int /*<<< orphan*/  FileList; int /*<<< orphan*/  Fifo; } ;
typedef  TYPE_1__ ZIP_PACKER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int) ; 

ZIP_PACKER *FUNC3()
{
	ZIP_PACKER *p = FUNC2(sizeof(ZIP_PACKER));

	p->Fifo = FUNC0();
	p->FileList = FUNC1(NULL);
	p->CurrentFile = NULL;

	return p;
}