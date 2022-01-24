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
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int,char const*) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int,int,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 

void FUNC5(
    int p, int q, int x, int y, int z, int face, const char *text, int dirty)
{
    if (FUNC3(text) == 0) {
        FUNC4(x, y, z, face);
        return;
    }
    Chunk *chunk = FUNC1(p, q);
    if (chunk) {
        SignList *signs = &chunk->signs;
        FUNC2(signs, x, y, z, face, text);
        if (dirty) {
            chunk->dirty = 1;
        }
    }
    FUNC0(p, q, x, y, z, face, text);
}