
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int find_arg (int,char**,char*) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int test_tag (char*,char*,char*) ;
 int train_tag (char*,char*,int) ;

void run_tag(int argc, char **argv)
{
    if(argc < 4){
        fprintf(stderr, "usage: %s %s [train/test/valid] [cfg] [weights (optional)]\n", argv[0], argv[1]);
        return;
    }

    int clear = find_arg(argc, argv, "-clear");
    char *cfg = argv[3];
    char *weights = (argc > 4) ? argv[4] : 0;
    char *filename = (argc > 5) ? argv[5] : 0;
    if(0==strcmp(argv[2], "train")) train_tag(cfg, weights, clear);
    else if(0==strcmp(argv[2], "test")) test_tag(cfg, weights, filename);
}
