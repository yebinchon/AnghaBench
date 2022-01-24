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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char*) ; 
 int FUNC2 (char*,int,char**) ; 
 int FUNC3 () ; 
 void* max_vocab ; 
 void* min_count ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC5(int argc, char **argv) {
    int i;
    if (argc == 1) {
        FUNC4("Simple tool to extract unigram counts\n");
        FUNC4("Author: Jeffrey Pennington (jpennin@stanford.edu)\n\n");
        FUNC4("Usage options:\n");
        FUNC4("\t-verbose <int>\n");
        FUNC4("\t\tSet verbosity: 0, 1, or 2 (default)\n");
        FUNC4("\t-max-vocab <int>\n");
        FUNC4("\t\tUpper bound on vocabulary size, i.e. keep the <int> most frequent words. The minimum frequency words are randomly sampled so as to obtain an even distribution over the alphabet.\n");
        FUNC4("\t-min-count <int>\n");
        FUNC4("\t\tLower limit such that words which occur fewer than <int> times are discarded.\n");
        FUNC4("\nExample usage:\n");
        FUNC4("./vocab_count -verbose 2 -max-vocab 100000 -min-count 10 < corpus.txt > vocab.txt\n");
        return 0;
    }
    
    if ((i = FUNC2((char *)"-verbose", argc, argv)) > 0) verbose = FUNC0(argv[i + 1]);
    if ((i = FUNC2((char *)"-max-vocab", argc, argv)) > 0) max_vocab = FUNC1(argv[i + 1]);
    if ((i = FUNC2((char *)"-min-count", argc, argv)) > 0) min_count = FUNC1(argv[i + 1]);
    return FUNC3();
}