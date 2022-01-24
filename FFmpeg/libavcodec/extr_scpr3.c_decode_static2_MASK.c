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
typedef  int uint32_t ;
struct TYPE_5__ {int size; int* symbols; } ;
typedef  TYPE_1__ PixelModel3 ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,int,int) ; 

__attribute__((used)) static int FUNC2(PixelModel3 *m, uint32_t val)
{
    uint32_t size;

    size = m->size;
    for (int i = 0; i < size; i++) {
        if (val == m->symbols[i]) {
            int a;

            if (m->size <= 32)
                a = 32;
            else
                a = 64;
            return FUNC1(m, val, a);
        }
    }

    if (size >= 64)
        return FUNC0(m, val);

    m->symbols[size] = val;
    m->size++;

    return 0;
}