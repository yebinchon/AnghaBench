#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t buflen; int* buf; int column; int /*<<< orphan*/  line; scalar_t__ file; } ;
typedef  TYPE_1__ File ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  files ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3() {
    File *f = FUNC2(files);
    int c;
    if (f->buflen > 0) {
        c = f->buf[--f->buflen];
    } else if (f->file) {
        c = FUNC0(f);
    } else {
        c = FUNC1(f);
    }
    if (c == '\n') {
        f->line++;
        f->column = 1;
    } else if (c != EOF) {
        f->column++;
    }
    return c;
}