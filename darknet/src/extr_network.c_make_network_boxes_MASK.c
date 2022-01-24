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
struct TYPE_7__ {int n; TYPE_2__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_8__ {int classes; int coords; } ;
typedef  TYPE_2__ layer ;
struct TYPE_9__ {void* mask; void* prob; } ;
typedef  TYPE_3__ detection ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int FUNC1 (TYPE_1__*,float) ; 

detection *FUNC2(network *net, float thresh, int *num)
{
    layer l = net->layers[net->n - 1];
    int i;
    int nboxes = FUNC1(net, thresh);
    if(num) *num = nboxes;
    detection *dets = FUNC0(nboxes, sizeof(detection));
    for(i = 0; i < nboxes; ++i){
        dets[i].prob = FUNC0(l.classes, sizeof(float));
        if(l.coords > 4){
            dets[i].mask = FUNC0(l.coords-4, sizeof(float));
        }
    }
    return dets;
}