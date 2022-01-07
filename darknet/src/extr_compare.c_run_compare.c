
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BattleRoyaleWithCheese (char*,char*) ;
 int SortMaster3000 (char*,char*) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int train_compare (char*,char*) ;
 int validate_compare (char*,char*) ;

void run_compare(int argc, char **argv)
{
    if(argc < 4){
        fprintf(stderr, "usage: %s %s [train/test/valid] [cfg] [weights (optional)]\n", argv[0], argv[1]);
        return;
    }

    char *cfg = argv[3];
    char *weights = (argc > 4) ? argv[4] : 0;

    if(0==strcmp(argv[2], "train")) train_compare(cfg, weights);
    else if(0==strcmp(argv[2], "valid")) validate_compare(cfg, weights);
    else if(0==strcmp(argv[2], "sort")) SortMaster3000(cfg, weights);
    else if(0==strcmp(argv[2], "battle")) BattleRoyaleWithCheese(cfg, weights);





}
