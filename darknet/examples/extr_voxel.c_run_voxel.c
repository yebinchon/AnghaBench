
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int extract_voxel (char*,char*,char*) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int test_voxel (char*,char*,char*) ;
 int train_voxel (char*,char*) ;

void run_voxel(int argc, char **argv)
{
    if(argc < 4){
        fprintf(stderr, "usage: %s %s [train/test/valid] [cfg] [weights (optional)]\n", argv[0], argv[1]);
        return;
    }

    char *cfg = argv[3];
    char *weights = (argc > 4) ? argv[4] : 0;
    char *filename = (argc > 5) ? argv[5] : 0;
    if(0==strcmp(argv[2], "train")) train_voxel(cfg, weights);
    else if(0==strcmp(argv[2], "test")) test_voxel(cfg, weights, filename);
    else if(0==strcmp(argv[2], "extract")) extract_voxel(argv[3], argv[4], argv[5]);



}
