#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int n; int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_2__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_8__ {scalar_t__ type; int w; int h; int n; } ;
typedef  TYPE_2__ layer ;
typedef  int /*<<< orphan*/  detection ;

/* Variables and functions */
 scalar_t__ DETECTION ; 
 scalar_t__ REGION ; 
 scalar_t__ YOLO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__,int,int,float,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,int*,float,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,int*,int,int /*<<< orphan*/ *) ; 

void FUNC3(network *net, int w, int h, float thresh, float hier, int *map, int relative, detection *dets)
{
    int j;
    for(j = 0; j < net->n; ++j){
        layer l = net->layers[j];
        if(l.type == YOLO){
            int count = FUNC2(l, w, h, net->w, net->h, thresh, map, relative, dets);
            dets += count;
        }
        if(l.type == REGION){
            FUNC1(l, w, h, net->w, net->h, thresh, map, hier, relative, dets);
            dets += l.w*l.h*l.n;
        }
        if(l.type == DETECTION){
            FUNC0(l, w, h, thresh, dets);
            dets += l.w*l.h*l.n;
        }
    }
}