#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int index; int batch; } ;
typedef  TYPE_1__ size_params ;
struct TYPE_10__ {scalar_t__ out_w; scalar_t__ out_h; scalar_t__ out_c; } ;
typedef  TYPE_2__ route_layer ;
struct TYPE_11__ {TYPE_4__* layers; } ;
typedef  TYPE_3__ network ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_12__ {int outputs; scalar_t__ out_w; scalar_t__ out_h; scalar_t__ out_c; } ;
typedef  TYPE_4__ convolutional_layer ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__ FUNC3 (int,int,int*,int*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (char*,char) ; 
 int FUNC6 (char*) ; 

route_layer FUNC7(list *options, size_params params, network *net)
{
    char *l = FUNC4(options, "layers");
    int len = FUNC6(l);
    if(!l) FUNC2("Route Layer must specify input layers");
    int n = 1;
    int i;
    for(i = 0; i < len; ++i){
        if (l[i] == ',') ++n;
    }

    int *layers = FUNC1(n, sizeof(int));
    int *sizes = FUNC1(n, sizeof(int));
    for(i = 0; i < n; ++i){
        int index = FUNC0(l);
        l = FUNC5(l, ',')+1;
        if(index < 0) index = params.index + index;
        layers[i] = index;
        sizes[i] = net->layers[index].outputs;
    }
    int batch = params.batch;

    route_layer layer = FUNC3(batch, n, layers, sizes);

    convolutional_layer first = net->layers[layers[0]];
    layer.out_w = first.out_w;
    layer.out_h = first.out_h;
    layer.out_c = first.out_c;
    for(i = 1; i < n; ++i){
        int index = layers[i];
        convolutional_layer next = net->layers[index];
        if(next.out_w == first.out_w && next.out_h == first.out_h){
            layer.out_c += next.out_c;
        }else{
            layer.out_h = layer.out_w = layer.out_c = 0;
        }
    }

    return layer;
}