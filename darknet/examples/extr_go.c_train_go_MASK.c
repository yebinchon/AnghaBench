#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int learning_rate; double momentum; double decay; int* seen; int max_batches; int batch; int subdivisions; } ;
typedef  TYPE_1__ network ;
struct TYPE_14__ {int n; } ;
typedef  TYPE_2__ moves ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 TYPE_1__** FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_2__ FUNC8 (char*) ; 
 TYPE_1__* FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 float FUNC17 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 float FUNC18 (TYPE_1__**,int,int /*<<< orphan*/ ,int) ; 
 double FUNC19 () ; 

void FUNC20(char *cfgfile, char *weightfile, char *filename, int *gpus, int ngpus, int clear)
{
    int i;
    float avg_loss = -1;
    char *base = FUNC0(cfgfile);
    FUNC10("%s\n", base);
    FUNC10("%d\n", ngpus);
    network **nets = FUNC1(ngpus, sizeof(network*));

    FUNC15(FUNC16(0));
    int seed = FUNC11();
    for(i = 0; i < ngpus; ++i){
        FUNC15(seed);
#ifdef GPU
        cuda_set_device(gpus[i]);
#endif
        nets[i] = FUNC9(cfgfile, weightfile, clear);
        nets[i]->learning_rate *= ngpus;
    }
    network *net = nets[0];
    FUNC10("Learning Rate: %g, Momentum: %g, Decay: %g\n", net->learning_rate, net->momentum, net->decay);

    char *backup_directory = "/home/pjreddie/backup/";

    char buff[256];
    moves m = FUNC8(filename);
    //moves m = load_go_moves("games.txt");

    int N = m.n;
    FUNC10("Moves: %d\n", N);
    int epoch = (*net->seen)/N;
    while(FUNC6(net) < net->max_batches || net->max_batches == 0){
        double time=FUNC19();

        data train = FUNC12(m, net->batch*net->subdivisions*ngpus);
        FUNC10("Loaded: %lf seconds\n", FUNC19() - time);
        time=FUNC19();

        float loss = 0;
#ifdef GPU
        if(ngpus == 1){
            loss = train_network(net, train);
        } else {
            loss = train_networks(nets, ngpus, train, 10);
        }
#else
        loss = FUNC17(net, train);
#endif
        FUNC4(train);

        if(avg_loss == -1) avg_loss = loss;
        avg_loss = avg_loss*.95 + loss*.05;
        FUNC10("%ld, %.3f: %f, %f avg, %f rate, %lf seconds, %ld images\n", FUNC6(net), (float)(*net->seen)/N, loss, avg_loss, FUNC7(net), FUNC19()-time, *net->seen);
        if(*net->seen/N > epoch){
            epoch = *net->seen/N;
            char buff[256];
            FUNC14(buff, "%s/%s_%d.weights", backup_directory,base, epoch);
            FUNC13(net, buff);

        }
        if(FUNC6(net)%1000 == 0){
            char buff[256];
            FUNC14(buff, "%s/%s.backup",backup_directory,base);
            FUNC13(net, buff);
        }
        if(FUNC6(net)%10000 == 0){
            char buff[256];
            FUNC14(buff, "%s/%s_%ld.backup",backup_directory,base,FUNC6(net));
            FUNC13(net, buff);
        }
    }
    FUNC14(buff, "%s/%s.weights", backup_directory, base);
    FUNC13(net, buff);

    FUNC5(net);
    FUNC3(base);
}