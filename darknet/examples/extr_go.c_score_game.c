
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 char* fgetl (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 int print_game (float*,int *) ;
 int sscanf (char*,char*,char*,float*) ;
 int stderr ;

float score_game(float *board)
{
    int i;
    FILE *f = fopen("game.txt", "w");
    int count = print_game(board, f);
    fprintf(f, "final_score\n");
    fclose(f);
    FILE *p = popen("./gnugo --mode gtp < game.txt", "r");
    for(i = 0; i < count; ++i){
        free(fgetl(p));
        free(fgetl(p));
    }
    char *l = 0;
    float score = 0;
    char player = 0;
    while((l = fgetl(p))){
        fprintf(stderr, "%s  \t", l);
        int n = sscanf(l, "= %c+%f", &player, &score);
        free(l);
        if (n == 2) break;
    }
    if(player == 'W') score = -score;
    pclose(p);
    return score;
}
