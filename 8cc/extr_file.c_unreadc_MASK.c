#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int buflen; int* buf; int column; int /*<<< orphan*/  line; } ;
typedef  TYPE_1__ File ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  files ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(int c) {
    if (c == EOF)
        return;
    File *f = FUNC1(files);
    FUNC0(f->buflen < sizeof(f->buf) / sizeof(f->buf[0]));
    f->buf[f->buflen++] = c;
    if (c == '\n') {
        f->column = 1;
        f->line--;
    } else {
        f->column--;
    }
}