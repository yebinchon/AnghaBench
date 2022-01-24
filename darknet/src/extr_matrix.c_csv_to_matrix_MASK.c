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
struct TYPE_3__ {int cols; int rows; int /*<<< orphan*/ * vals; } ;
typedef  TYPE_1__ matrix ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int) ; 

matrix FUNC8(char *filename)
{
    FILE *fp = FUNC4(filename, "r");
    if(!fp) FUNC3(filename);

    matrix m;
    m.cols = -1;

    char *line;

    int n = 0;
    int size = 1024;
    m.vals = FUNC0(size, sizeof(float*));
    while((line = FUNC2(fp))){
        if(m.cols == -1) m.cols = FUNC1(line);
        if(n == size){
            size *= 2;
            m.vals = FUNC7(m.vals, size*sizeof(float*));
        }
        m.vals[n] = FUNC6(line, m.cols);
        FUNC5(line);
        ++n;
    }
    m.vals = FUNC7(m.vals, n*sizeof(float*));
    m.rows = n;
    return m;
}