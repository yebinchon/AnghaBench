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
typedef  double real ;
typedef  int /*<<< orphan*/  CREC ;

/* Variables and functions */
 int MAX_STRING_LENGTH ; 
 scalar_t__ FUNC0 (char*) ; 
 void* FUNC1 (char*) ; 
 void* FUNC2 (char*) ; 
 void* distance_weighting ; 
 int FUNC3 (double) ; 
 int /*<<< orphan*/  file_head ; 
 int FUNC4 (char*,int,char**) ; 
 int FUNC5 () ; 
 double FUNC6 (double) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 long long max_product ; 
 scalar_t__ memory_limit ; 
 long long overflow_length ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 void* symmetric ; 
 void* verbose ; 
 int /*<<< orphan*/  vocab_file ; 
 void* window_size ; 

int FUNC10(int argc, char **argv) {
    int i;
    real rlimit, n = 1e5;
    vocab_file = FUNC7(sizeof(char) * MAX_STRING_LENGTH);
    file_head = FUNC7(sizeof(char) * MAX_STRING_LENGTH);
    
    if (argc == 1) {
        FUNC8("Tool to calculate word-word cooccurrence statistics\n");
        FUNC8("Author: Jeffrey Pennington (jpennin@stanford.edu)\n\n");
        FUNC8("Usage options:\n");
        FUNC8("\t-verbose <int>\n");
        FUNC8("\t\tSet verbosity: 0, 1, 2 (default), or 3\n");
        FUNC8("\t-symmetric <int>\n");
        FUNC8("\t\tIf <int> = 0, only use left context; if <int> = 1 (default), use left and right\n");
        FUNC8("\t-window-size <int>\n");
        FUNC8("\t\tNumber of context words to the left (and to the right, if symmetric = 1); default 15\n");
        FUNC8("\t-vocab-file <file>\n");
        FUNC8("\t\tFile containing vocabulary (truncated unigram counts, produced by 'vocab_count'); default vocab.txt\n");
        FUNC8("\t-memory <float>\n");
        FUNC8("\t\tSoft limit for memory consumption, in GB -- based on simple heuristic, so not extremely accurate; default 4.0\n");
        FUNC8("\t-max-product <int>\n");
        FUNC8("\t\tLimit the size of dense cooccurrence array by specifying the max product <int> of the frequency counts of the two cooccurring words.\n\t\tThis value overrides that which is automatically produced by '-memory'. Typically only needs adjustment for use with very large corpora.\n");
        FUNC8("\t-overflow-length <int>\n");
        FUNC8("\t\tLimit to length <int> the sparse overflow array, which buffers cooccurrence data that does not fit in the dense array, before writing to disk. \n\t\tThis value overrides that which is automatically produced by '-memory'. Typically only needs adjustment for use with very large corpora.\n");
        FUNC8("\t-overflow-file <file>\n");
        FUNC8("\t\tFilename, excluding extension, for temporary files; default overflow\n");
        FUNC8("\t-distance-weighting <int>\n");
        FUNC8("\t\tIf <int> = 0, do not weight cooccurrence count by distance between words; if <int> = 1 (default), weight the cooccurrence count by inverse of distance between words\n");

        FUNC8("\nExample usage:\n");
        FUNC8("./cooccur -verbose 2 -symmetric 0 -window-size 10 -vocab-file vocab.txt -memory 8.0 -overflow-file tempoverflow < corpus.txt > cooccurrences.bin\n\n");
        return 0;
    }

    if ((i = FUNC4((char *)"-verbose", argc, argv)) > 0) verbose = FUNC1(argv[i + 1]);
    if ((i = FUNC4((char *)"-symmetric", argc, argv)) > 0) symmetric = FUNC1(argv[i + 1]);
    if ((i = FUNC4((char *)"-window-size", argc, argv)) > 0) window_size = FUNC1(argv[i + 1]);
    if ((i = FUNC4((char *)"-vocab-file", argc, argv)) > 0) FUNC9(vocab_file, argv[i + 1]);
    else FUNC9(vocab_file, (char *)"vocab.txt");
    if ((i = FUNC4((char *)"-overflow-file", argc, argv)) > 0) FUNC9(file_head, argv[i + 1]);
    else FUNC9(file_head, (char *)"overflow");
    if ((i = FUNC4((char *)"-memory", argc, argv)) > 0) memory_limit = FUNC0(argv[i + 1]);
    if ((i = FUNC4((char *)"-distance-weighting", argc, argv)) > 0)  distance_weighting = FUNC1(argv[i + 1]);
    
    /* The memory_limit determines a limit on the number of elements in bigram_table and the overflow buffer */
    /* Estimate the maximum value that max_product can take so that this limit is still satisfied */
    rlimit = 0.85 * (real)memory_limit * 1073741824/(sizeof(CREC));
    while (FUNC3(rlimit - n * (FUNC6(n) + 0.1544313298)) > 1e-3) n = rlimit / (FUNC6(n) + 0.1544313298);
    max_product = (long long) n;
    overflow_length = (long long) rlimit/6; // 0.85 + 1/6 ~= 1
    
    /* Override estimates by specifying limits explicitly on the command line */
    if ((i = FUNC4((char *)"-max-product", argc, argv)) > 0) max_product = FUNC2(argv[i + 1]);
    if ((i = FUNC4((char *)"-overflow-length", argc, argv)) > 0) overflow_length = FUNC2(argv[i + 1]);
    
    return FUNC5();
}