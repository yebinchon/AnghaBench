#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int n; TYPE_2__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 scalar_t__ DETECTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

layer FUNC1(network *net)
{
    int i;
    for(i = 0; i < net->n; ++i){
        if(net->layers[i].type == DETECTION){
            return net->layers[i];
        }
    }
    FUNC0(stderr, "Detection layer not found!!\n");
    layer l = {0};
    return l;
}