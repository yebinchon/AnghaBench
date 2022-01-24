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
struct TYPE_6__ {scalar_t__ type; int w; int h; int n; } ;
typedef  TYPE_2__ layer ;

/* Variables and functions */
 scalar_t__ DETECTION ; 
 scalar_t__ REGION ; 
 scalar_t__ YOLO ; 
 scalar_t__ FUNC0 (TYPE_2__,float) ; 

int FUNC1(network *net, float thresh)
{
    int i;
    int s = 0;
    for(i = 0; i < net->n; ++i){
        layer l = net->layers[i];
        if(l.type == YOLO){
            s += FUNC0(l, thresh);
        }
        if(l.type == DETECTION || l.type == REGION){
            s += l.w*l.h*l.n;
        }
    }
    return s;
}