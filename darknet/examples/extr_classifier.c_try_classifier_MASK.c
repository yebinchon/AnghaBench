#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__* layers; } ;
typedef  TYPE_1__ network ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_15__ {int c; double* rolling_mean; double* rolling_variance; double* scales; double* output; int outputs; int /*<<< orphan*/  output_gpu; } ;
typedef  TYPE_2__ layer ;
struct TYPE_16__ {int w; int h; float* data; } ;
typedef  TYPE_3__ image ;
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 int* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 () ; 
 TYPE_3__ FUNC2 (TYPE_3__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,double*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__) ; 
 char** FUNC7 (char*) ; 
 TYPE_3__ FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 
 float* FUNC10 (TYPE_1__*,float*) ; 
 int /*<<< orphan*/  FUNC11 (float*,float*,float*,int,int,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC13 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/ * FUNC15 (char*) ; 
 TYPE_3__ FUNC16 (TYPE_3__,int) ; 
 double FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int,int*) ; 

void FUNC23(char *datacfg, char *cfgfile, char *weightfile, char *filename, int layer_num)
{
    network *net = FUNC9(cfgfile, weightfile, 0);
    FUNC18(net, 1);
    FUNC19(2222222);

    list *options = FUNC15(datacfg);

    char *name_list = FUNC13(options, "names", 0);
    if(!name_list) name_list = FUNC13(options, "labels", "data/labels.list");
    int top = FUNC12(options, "top", 1);

    int i = 0;
    char **names = FUNC7(name_list);
    clock_t time;
    int *indexes = FUNC0(top, sizeof(int));
    char buff[256];
    char *input = buff;
    while(1){
        if(filename){
            FUNC20(input, filename, 256);
        }else{
            FUNC14("Enter Image Path: ");
            FUNC4(stdout);
            input = FUNC5(input, 256, stdin);
            if(!input) return;
            FUNC21(input, "\n");
        }
        image orig = FUNC8(input, 0, 0);
        image r = FUNC16(orig, 256);
        image im = FUNC2(r, (r.w - 224 - 1)/2 + 1, (r.h - 224 - 1)/2 + 1, 224, 224);
        float mean[] = {0.48263312050943, 0.45230225481413, 0.40099074308742};
        float std[] = {0.22590347483426, 0.22120921437787, 0.22103996251583};
        float var[3];
        var[0] = std[0]*std[0];
        var[1] = std[1]*std[1];
        var[2] = std[2]*std[2];

        FUNC11(im.data, mean, var, 1, 3, im.w*im.h);

        float *X = im.data;
        time=FUNC1();
        float *predictions = FUNC10(net, X);

        layer l = net->layers[layer_num];
        for(i = 0; i < l.c; ++i){
            if(l.rolling_mean) FUNC14("%f %f %f\n", l.rolling_mean[i], l.rolling_variance[i], l.scales[i]);
        }
#ifdef GPU
        cuda_pull_array(l.output_gpu, l.output, l.outputs);
#endif
        for(i = 0; i < l.outputs; ++i){
            FUNC14("%f\n", l.output[i]);
        }
        /*

           printf("\n\nWeights\n");
           for(i = 0; i < l.n*l.size*l.size*l.c; ++i){
           printf("%f\n", l.filters[i]);
           }

           printf("\n\nBiases\n");
           for(i = 0; i < l.n; ++i){
           printf("%f\n", l.biases[i]);
           }
         */

        FUNC22(net, top, indexes);
        FUNC14("%s: Predicted in %f seconds.\n", input, FUNC17(FUNC1()-time));
        for(i = 0; i < top; ++i){
            int index = indexes[i];
            FUNC14("%s: %f\n", names[index], predictions[index]);
        }
        FUNC6(im);
        if (filename) break;
    }
}