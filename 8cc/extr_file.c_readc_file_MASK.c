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
struct TYPE_3__ {char last; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ File ;

/* Variables and functions */
 int EOF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(File *f) {
    int c = FUNC0(f->file);
    if (c == EOF) {
        c = (f->last == '\n' || f->last == EOF) ? EOF : '\n';
    } else if (c == '\r') {
        int c2 = FUNC0(f->file);
        if (c2 != '\n')
            FUNC1(c2, f->file);
        c = '\n';
    }
    f->last = c;
    return c;
}