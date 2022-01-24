#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int outputs; int batch; } ;
typedef  TYPE_2__ network ;
struct TYPE_12__ {float** vals; } ;
typedef  TYPE_3__ matrix ;
struct TYPE_10__ {int rows; int cols; int /*<<< orphan*/ * vals; } ;
struct TYPE_13__ {TYPE_1__ X; } ;
typedef  TYPE_4__ data ;

/* Variables and functions */
 float* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (float*) ; 
 TYPE_3__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (float*,int /*<<< orphan*/ ,int) ; 
 float* FUNC4 (TYPE_2__*,float*) ; 

matrix FUNC5(network *net, data test, int n)
{
    int i,j,b,m;
    int k = net->outputs;
    matrix pred = FUNC2(test.X.rows, k);
    float *X = FUNC0(net->batch*test.X.rows, sizeof(float));
    for(i = 0; i < test.X.rows; i += net->batch){
        for(b = 0; b < net->batch; ++b){
            if(i+b == test.X.rows) break;
            FUNC3(X+b*test.X.cols, test.X.vals[i+b], test.X.cols*sizeof(float));
        }
        for(m = 0; m < n; ++m){
            float *out = FUNC4(net, X);
            for(b = 0; b < net->batch; ++b){
                if(i+b == test.X.rows) break;
                for(j = 0; j < k; ++j){
                    pred.vals[i+b][j] += out[j+b*k]/n;
                }
            }
        }
    }
    FUNC1(X);
    return pred;   
}