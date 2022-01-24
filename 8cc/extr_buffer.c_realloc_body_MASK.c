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
struct TYPE_3__ {int nalloc; char* body; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ Buffer ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(Buffer *b) {
    int newsize = b->nalloc * 2;
    char *body = FUNC0(newsize);
    FUNC1(body, b->body, b->len);
    b->body = body;
    b->nalloc = newsize;
}