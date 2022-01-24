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
struct TYPE_3__ {int /*<<< orphan*/  outputs; int /*<<< orphan*/  weights; int /*<<< orphan*/  biases; int /*<<< orphan*/  scales; scalar_t__ batch_normalize; } ;
typedef  TYPE_1__ layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(layer l)
{
    if(l.batch_normalize){
        FUNC1("Scales ");
        FUNC0(l.scales, l.outputs);
        /*
           printf("Rolling Mean ");
           print_statistics(l.rolling_mean, l.outputs);
           printf("Rolling Variance ");
           print_statistics(l.rolling_variance, l.outputs);
         */
    }
    FUNC1("Biases ");
    FUNC0(l.biases, l.outputs);
    FUNC1("Weights ");
    FUNC0(l.weights, l.outputs);
}