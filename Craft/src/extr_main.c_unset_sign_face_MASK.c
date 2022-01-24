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
struct TYPE_3__ {int dirty; int /*<<< orphan*/  signs; } ;
typedef  int /*<<< orphan*/  SignList ;
typedef  TYPE_1__ Chunk ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int,int,int) ; 

void FUNC4(int x, int y, int z, int face) {
    int p = FUNC0(x);
    int q = FUNC0(z);
    Chunk *chunk = FUNC2(p, q);
    if (chunk) {
        SignList *signs = &chunk->signs;
        if (FUNC3(signs, x, y, z, face)) {
            chunk->dirty = 1;
            FUNC1(x, y, z, face);
        }
    }
    else {
        FUNC1(x, y, z, face);
    }
}