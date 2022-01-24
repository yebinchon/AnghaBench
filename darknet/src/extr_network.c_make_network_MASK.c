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
struct TYPE_3__ {int n; void* cost; void* t; void* seen; void* layers; } ;
typedef  TYPE_1__ network ;
typedef  int /*<<< orphan*/  layer ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 

network *FUNC1(int n)
{
    network *net = FUNC0(1, sizeof(network));
    net->n = n;
    net->layers = FUNC0(net->n, sizeof(layer));
    net->seen = FUNC0(1, sizeof(size_t));
    net->t    = FUNC0(1, sizeof(int));
    net->cost = FUNC0(1, sizeof(float));
    return net;
}