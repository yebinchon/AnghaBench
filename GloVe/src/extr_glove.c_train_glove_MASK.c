#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int real ;
typedef  long long pthread_t ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  CREC ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  alpha ; 
 int checkpoint_every ; 
 scalar_t__* cost ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (long long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long long FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  glove_thread ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* input_file ; 
 long long* lines_per_thread ; 
 struct tm* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int num_iter ; 
 int num_lines ; 
 int num_threads ; 
 int /*<<< orphan*/  FUNC9 (long long*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 (long long,int /*<<< orphan*/ *) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int vector_size ; 
 int verbose ; 
 int /*<<< orphan*/  vocab_size ; 
 int /*<<< orphan*/  x_max ; 

int FUNC14() {
    long long a, file_size;
    int save_params_return_code;
    int b;
    FILE *fin;
    real total_cost = 0;

    FUNC2(stderr, "TRAINING MODEL\n");
    
    fin = FUNC1(input_file, "rb");
    if (fin == NULL) {FUNC2(stderr,"Unable to open cooccurrence file %s.\n",input_file); return 1;}
    FUNC4(fin, 0, SEEK_END);
    file_size = FUNC5(fin);
    num_lines = file_size/(sizeof(CREC)); // Assuming the file isn't corrupt and consists only of CREC's
    FUNC0(fin);
    FUNC2(stderr,"Read %lld lines.\n", num_lines);
    if (verbose > 1) FUNC2(stderr,"Initializing parameters...");
    FUNC6();
    if (verbose > 1) FUNC2(stderr,"done.\n");
    if (verbose > 0) FUNC2(stderr,"vector size: %d\n", vector_size);
    if (verbose > 0) FUNC2(stderr,"vocab size: %lld\n", vocab_size);
    if (verbose > 0) FUNC2(stderr,"x_max: %lf\n", x_max);
    if (verbose > 0) FUNC2(stderr,"alpha: %lf\n", alpha);
    pthread_t *pt = (pthread_t *)FUNC8(num_threads * sizeof(pthread_t));
    lines_per_thread = (long long *) FUNC8(num_threads * sizeof(long long));
    
    time_t rawtime;
    struct tm *info;
    char time_buffer[80];
    // Lock-free asynchronous SGD
    for (b = 0; b < num_iter; b++) {
        total_cost = 0;
        for (a = 0; a < num_threads - 1; a++) lines_per_thread[a] = num_lines / num_threads;
        lines_per_thread[a] = num_lines / num_threads + num_lines % num_threads;
        long long *thread_ids = (long long*)FUNC8(sizeof(long long) * num_threads);
        for (a = 0; a < num_threads; a++) thread_ids[a] = a;
        for (a = 0; a < num_threads; a++) FUNC9(&pt[a], NULL, glove_thread, (void *)&thread_ids[a]);
        for (a = 0; a < num_threads; a++) FUNC10(pt[a], NULL);
        for (a = 0; a < num_threads; a++) total_cost += cost[a];
        FUNC3(thread_ids);

        FUNC13(&rawtime);
        info = FUNC7(&rawtime);
        FUNC12(time_buffer,80,"%x - %I:%M.%S%p", info);
        FUNC2(stderr, "%s, iter: %03d, cost: %lf\n", time_buffer,  b+1, total_cost/num_lines);

        if (checkpoint_every > 0 && (b + 1) % checkpoint_every == 0) {
            FUNC2(stderr,"    saving itermediate parameters for iter %03d...", b+1);
            save_params_return_code = FUNC11(b+1);
            if (save_params_return_code != 0)
                return save_params_return_code;
            FUNC2(stderr,"done.\n");
        }

    }
    FUNC3(pt);
    FUNC3(lines_per_thread);
    return FUNC11(0);
}