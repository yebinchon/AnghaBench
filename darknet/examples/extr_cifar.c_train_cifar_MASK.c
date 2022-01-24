#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {double learning_rate; double momentum; double decay; int* seen; int max_batches; } ;
typedef  TYPE_1__ network ;
typedef  int /*<<< orphan*/  data ;
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (void**,int) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 char** FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__* FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 float FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC18(char *cfgfile, char *weightfile)
{
    FUNC15(FUNC16(0));
    float avg_loss = -1;
    char *base = FUNC0(cfgfile);
    FUNC11("%s\n", base);
    network *net = FUNC10(cfgfile, weightfile, 0);
    FUNC11("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);

    char *backup_directory = "/home/pjreddie/backup/";
    int classes = 10;
    int N = 50000;

    char **labels = FUNC8("data/cifar/labels.txt");
    int epoch = (*net->seen)/N;
    data train = FUNC9();
    while(FUNC6(net) < net->max_batches || net->max_batches == 0){
        clock_t time=FUNC1();

        float loss = FUNC17(net, train, 1);
        if(avg_loss == -1) avg_loss = loss;
        avg_loss = avg_loss*.95 + loss*.05;
        FUNC11("%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\n", FUNC6(net), (float)(*net->seen)/N, loss, avg_loss, FUNC7(net), FUNC13(FUNC1()-time), *net->seen);
        if(*net->seen/N > epoch){
            epoch = *net->seen/N;
            char buff[256];
            FUNC14(buff, "%s/%s_%d.weights",backup_directory,base, epoch);
            FUNC12(net, buff);
        }
        if(FUNC6(net)%100 == 0){
            char buff[256];
            FUNC14(buff, "%s/%s.backup",backup_directory,base);
            FUNC12(net, buff);
        }
    }
    char buff[256];
    FUNC14(buff, "%s/%s.weights", backup_directory, base);
    FUNC12(net, buff);

    FUNC4(net);
    FUNC5((void**)labels, classes);
    FUNC2(base);
    FUNC3(train);
}