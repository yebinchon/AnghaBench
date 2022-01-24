#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  network ;
struct TYPE_8__ {int rows; int /*<<< orphan*/  cols; int /*<<< orphan*/ * vals; } ;
typedef  TYPE_2__ matrix ;
struct TYPE_7__ {int /*<<< orphan*/  cols; int /*<<< orphan*/ * vals; } ;
struct TYPE_9__ {TYPE_1__ y; } ;
typedef  TYPE_3__ data ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC2 (int /*<<< orphan*/ *,TYPE_3__) ; 
 float FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,float,...) ; 

void FUNC5(network *n1, network *n2, data test)
{
    matrix g1 = FUNC2(n1, test);
    matrix g2 = FUNC2(n2, test);
    int i;
    int a,b,c,d;
    a = b = c = d = 0;
    for(i = 0; i < g1.rows; ++i){
        int truth = FUNC1(test.y.vals[i], test.y.cols);
        int p1 = FUNC1(g1.vals[i], g1.cols);
        int p2 = FUNC1(g2.vals[i], g2.cols);
        if(p1 == truth){
            if(p2 == truth) ++d;
            else ++c;
        }else{
            if(p2 == truth) ++b;
            else ++a;
        }
    }
    FUNC4("%5d %5d\n%5d %5d\n", a, b, c, d);
    float num = FUNC3((FUNC0(b - c) - 1.), 2.);
    float den = b + c;
    FUNC4("%f\n", num/den); 
}