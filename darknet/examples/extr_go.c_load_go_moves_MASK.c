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
struct TYPE_3__ {int n; char** data; } ;
typedef  TYPE_1__ moves ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char** FUNC0 (int,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 void* FUNC4 (char**,int) ; 

moves FUNC5(char *filename)
{
    moves m;
    m.n = 128;
    m.data = FUNC0(128, sizeof(char*));
    FILE *fp = FUNC2(filename, "rb");
    int count = 0;
    char *line = 0;
    while ((line = FUNC1(fp))) {
        if (count >= m.n) {
            m.n *= 2;
            m.data = FUNC4(m.data, m.n*sizeof(char*));
        }
        m.data[count] = line;
        ++count;
    }
    FUNC3("%d\n", count);
    m.n = count;
    m.data = FUNC4(m.data, count*sizeof(char*));
    return m;
}