
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int real ;
typedef long long pthread_t ;
typedef int FILE ;
typedef int CREC ;


 int SEEK_END ;
 int alpha ;
 int checkpoint_every ;
 scalar_t__* cost ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int free (long long*) ;
 int fseeko (int *,int ,int ) ;
 long long ftello (int *) ;
 int glove_thread ;
 int initialize_parameters () ;
 char* input_file ;
 long long* lines_per_thread ;
 struct tm* localtime (int *) ;
 scalar_t__ malloc (int) ;
 int num_iter ;
 int num_lines ;
 int num_threads ;
 int pthread_create (long long*,int *,int ,void*) ;
 int pthread_join (long long,int *) ;
 int save_params (int) ;
 int stderr ;
 int strftime (char*,int,char*,struct tm*) ;
 int time (int *) ;
 int vector_size ;
 int verbose ;
 int vocab_size ;
 int x_max ;

int train_glove() {
    long long a, file_size;
    int save_params_return_code;
    int b;
    FILE *fin;
    real total_cost = 0;

    fprintf(stderr, "TRAINING MODEL\n");

    fin = fopen(input_file, "rb");
    if (fin == ((void*)0)) {fprintf(stderr,"Unable to open cooccurrence file %s.\n",input_file); return 1;}
    fseeko(fin, 0, SEEK_END);
    file_size = ftello(fin);
    num_lines = file_size/(sizeof(CREC));
    fclose(fin);
    fprintf(stderr,"Read %lld lines.\n", num_lines);
    if (verbose > 1) fprintf(stderr,"Initializing parameters...");
    initialize_parameters();
    if (verbose > 1) fprintf(stderr,"done.\n");
    if (verbose > 0) fprintf(stderr,"vector size: %d\n", vector_size);
    if (verbose > 0) fprintf(stderr,"vocab size: %lld\n", vocab_size);
    if (verbose > 0) fprintf(stderr,"x_max: %lf\n", x_max);
    if (verbose > 0) fprintf(stderr,"alpha: %lf\n", alpha);
    pthread_t *pt = (pthread_t *)malloc(num_threads * sizeof(pthread_t));
    lines_per_thread = (long long *) malloc(num_threads * sizeof(long long));

    time_t rawtime;
    struct tm *info;
    char time_buffer[80];

    for (b = 0; b < num_iter; b++) {
        total_cost = 0;
        for (a = 0; a < num_threads - 1; a++) lines_per_thread[a] = num_lines / num_threads;
        lines_per_thread[a] = num_lines / num_threads + num_lines % num_threads;
        long long *thread_ids = (long long*)malloc(sizeof(long long) * num_threads);
        for (a = 0; a < num_threads; a++) thread_ids[a] = a;
        for (a = 0; a < num_threads; a++) pthread_create(&pt[a], ((void*)0), glove_thread, (void *)&thread_ids[a]);
        for (a = 0; a < num_threads; a++) pthread_join(pt[a], ((void*)0));
        for (a = 0; a < num_threads; a++) total_cost += cost[a];
        free(thread_ids);

        time(&rawtime);
        info = localtime(&rawtime);
        strftime(time_buffer,80,"%x - %I:%M.%S%p", info);
        fprintf(stderr, "%s, iter: %03d, cost: %lf\n", time_buffer, b+1, total_cost/num_lines);

        if (checkpoint_every > 0 && (b + 1) % checkpoint_every == 0) {
            fprintf(stderr,"    saving itermediate parameters for iter %03d...", b+1);
            save_params_return_code = save_params(b+1);
            if (save_params_return_code != 0)
                return save_params_return_code;
            fprintf(stderr,"done.\n");
        }

    }
    free(pt);
    free(lines_per_thread);
    return save_params(0);
}
