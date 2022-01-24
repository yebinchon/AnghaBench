#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {double learning_rate; double momentum; double decay; int* seen; int max_batches; } ;
typedef  TYPE_1__ network ;
typedef  int /*<<< orphan*/  matrix ;
struct TYPE_13__ {int /*<<< orphan*/  y; } ;
typedef  TYPE_2__ data ;
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (void**,int) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 char** FUNC9 (char*) ; 
 TYPE_2__ FUNC10 () ; 
 TYPE_1__* FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 float FUNC20 (TYPE_1__*,TYPE_2__,int) ; 

void FUNC21(char *cfgfile, char *weightfile)
{
    FUNC18(FUNC19(0));
    float avg_loss = -1;
    char *base = FUNC0(cfgfile);
    FUNC13("%s\n", base);
    network *net = FUNC11(cfgfile, weightfile, 0);
    FUNC13("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);

    char *backup_directory = "/home/pjreddie/backup/";
    int classes = 10;
    int N = 50000;

    char **labels = FUNC9("data/cifar/labels.txt");
    int epoch = (*net->seen)/N;

    data train = FUNC10();
    matrix soft = FUNC2("results/ensemble.csv");

    float weight = .9;
    FUNC15(soft, weight);
    FUNC15(train.y, 1. - weight);
    FUNC12(soft, train.y);

    while(FUNC7(net) < net->max_batches || net->max_batches == 0){
        clock_t time=FUNC1();

        float loss = FUNC20(net, train, 1);
        if(avg_loss == -1) avg_loss = loss;
        avg_loss = avg_loss*.95 + loss*.05;
        FUNC13("%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\n", FUNC7(net), (float)(*net->seen)/N, loss, avg_loss, FUNC8(net), FUNC16(FUNC1()-time), *net->seen);
        if(*net->seen/N > epoch){
            epoch = *net->seen/N;
            char buff[256];
            FUNC17(buff, "%s/%s_%d.weights",backup_directory,base, epoch);
            FUNC14(net, buff);
        }
        if(FUNC7(net)%100 == 0){
            char buff[256];
            FUNC17(buff, "%s/%s.backup",backup_directory,base);
            FUNC14(net, buff);
        }
    }
    char buff[256];
    FUNC17(buff, "%s/%s.weights", backup_directory, base);
    FUNC14(net, buff);

    FUNC5(net);
    FUNC6((void**)labels, classes);
    FUNC3(base);
    FUNC4(train);
}