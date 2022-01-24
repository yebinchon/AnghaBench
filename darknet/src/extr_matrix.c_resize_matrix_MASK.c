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
struct TYPE_4__ {int rows; int /*<<< orphan*/ * vals; int /*<<< orphan*/  cols; } ;
typedef  TYPE_1__ matrix ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 

matrix FUNC3(matrix m, int size)
{
    int i;
    if (m.rows == size) return m;
    if (m.rows < size) {
        m.vals = FUNC2(m.vals, size*sizeof(float*));
        for (i = m.rows; i < size; ++i) {
            m.vals[i] = FUNC0(m.cols, sizeof(float));
        }
    } else if (m.rows > size) {
        for (i = size; i < m.rows; ++i) {
            FUNC1(m.vals[i]);
        }
        m.vals = FUNC2(m.vals, size*sizeof(float*));
    }
    m.rows = size;
    return m;
}