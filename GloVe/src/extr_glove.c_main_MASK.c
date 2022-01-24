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
typedef  int /*<<< orphan*/  real ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int MAX_STRING_LENGTH ; 
 void* alpha ; 
 void* FUNC0 (char*) ; 
 void* FUNC1 (char*) ; 
 void* checkpoint_every ; 
 char* cost ; 
 void* eta ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int,char**) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 char* input_file ; 
 char* FUNC8 (int) ; 
 int model ; 
 void* num_iter ; 
 int num_threads ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* save_W_file ; 
 int save_gradsq ; 
 char* save_gradsq_file ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 () ; 
 void* use_binary ; 
 void* vector_size ; 
 void* verbose ; 
 char* vocab_file ; 
 scalar_t__ vocab_size ; 
 void* write_header ; 
 void* x_max ; 

int FUNC12(int argc, char **argv) {
    int i;
    FILE *fid;
    vocab_file = FUNC8(sizeof(char) * MAX_STRING_LENGTH);
    input_file = FUNC8(sizeof(char) * MAX_STRING_LENGTH);
    save_W_file = FUNC8(sizeof(char) * MAX_STRING_LENGTH);
    save_gradsq_file = FUNC8(sizeof(char) * MAX_STRING_LENGTH);
    int result = 0;
    
    if (argc == 1) {
        FUNC9("GloVe: Global Vectors for Word Representation, v0.2\n");
        FUNC9("Author: Jeffrey Pennington (jpennin@stanford.edu)\n\n");
        FUNC9("Usage options:\n");
        FUNC9("\t-verbose <int>\n");
        FUNC9("\t\tSet verbosity: 0, 1, or 2 (default)\n");
        FUNC9("\t-write-header <int>\n");
        FUNC9("\t\tIf 1, write vocab_size/vector_size as first line. Do nothing if 0 (default).\n");
        FUNC9("\t-vector-size <int>\n");
        FUNC9("\t\tDimension of word vector representations (excluding bias term); default 50\n");
        FUNC9("\t-threads <int>\n");
        FUNC9("\t\tNumber of threads; default 8\n");
        FUNC9("\t-iter <int>\n");
        FUNC9("\t\tNumber of training iterations; default 25\n");
        FUNC9("\t-eta <float>\n");
        FUNC9("\t\tInitial learning rate; default 0.05\n");
        FUNC9("\t-alpha <float>\n");
        FUNC9("\t\tParameter in exponent of weighting function; default 0.75\n");
        FUNC9("\t-x-max <float>\n");
        FUNC9("\t\tParameter specifying cutoff in weighting function; default 100.0\n");
        FUNC9("\t-binary <int>\n");
        FUNC9("\t\tSave output in binary format (0: text, 1: binary, 2: both); default 0\n");
        FUNC9("\t-model <int>\n");
        FUNC9("\t\tModel for word vector output (for text output only); default 2\n");
        FUNC9("\t\t   0: output all data, for both word and context word vectors, including bias terms\n");
        FUNC9("\t\t   1: output word vectors, excluding bias terms\n");
        FUNC9("\t\t   2: output word vectors + context word vectors, excluding bias terms\n");
        FUNC9("\t-input-file <file>\n");
        FUNC9("\t\tBinary input file of shuffled cooccurrence data (produced by 'cooccur' and 'shuffle'); default cooccurrence.shuf.bin\n");
        FUNC9("\t-vocab-file <file>\n");
        FUNC9("\t\tFile containing vocabulary (truncated unigram counts, produced by 'vocab_count'); default vocab.txt\n");
        FUNC9("\t-save-file <file>\n");
        FUNC9("\t\tFilename, excluding extension, for word vector output; default vectors\n");
        FUNC9("\t-gradsq-file <file>\n");
        FUNC9("\t\tFilename, excluding extension, for squared gradient output; default gradsq\n");
        FUNC9("\t-save-gradsq <int>\n");
        FUNC9("\t\tSave accumulated squared gradients; default 0 (off); ignored if gradsq-file is specified\n");
        FUNC9("\t-checkpoint-every <int>\n");
        FUNC9("\t\tCheckpoint a  model every <int> iterations; default 0 (off)\n");
        FUNC9("\nExample usage:\n");
        FUNC9("./glove -input-file cooccurrence.shuf.bin -vocab-file vocab.txt -save-file vectors -gradsq-file gradsq -verbose 2 -vector-size 100 -threads 16 -alpha 0.75 -x-max 100.0 -eta 0.05 -binary 2 -model 2\n\n");
        result = 0;
    } else {
        if ((i = FUNC3((char *)"-write-header", argc, argv)) > 0) write_header = FUNC1(argv[i + 1]);
        if ((i = FUNC3((char *)"-verbose", argc, argv)) > 0) verbose = FUNC1(argv[i + 1]);
        if ((i = FUNC3((char *)"-vector-size", argc, argv)) > 0) vector_size = FUNC1(argv[i + 1]);
        if ((i = FUNC3((char *)"-iter", argc, argv)) > 0) num_iter = FUNC1(argv[i + 1]);
        if ((i = FUNC3((char *)"-threads", argc, argv)) > 0) num_threads = FUNC1(argv[i + 1]);
        cost = FUNC8(sizeof(real) * num_threads);
        if ((i = FUNC3((char *)"-alpha", argc, argv)) > 0) alpha = FUNC0(argv[i + 1]);
        if ((i = FUNC3((char *)"-x-max", argc, argv)) > 0) x_max = FUNC0(argv[i + 1]);
        if ((i = FUNC3((char *)"-eta", argc, argv)) > 0) eta = FUNC0(argv[i + 1]);
        if ((i = FUNC3((char *)"-binary", argc, argv)) > 0) use_binary = FUNC1(argv[i + 1]);
        if ((i = FUNC3((char *)"-model", argc, argv)) > 0) model = FUNC1(argv[i + 1]);
        if (model != 0 && model != 1) model = 2;
        if ((i = FUNC3((char *)"-save-gradsq", argc, argv)) > 0) save_gradsq = FUNC1(argv[i + 1]);
        if ((i = FUNC3((char *)"-vocab-file", argc, argv)) > 0) FUNC10(vocab_file, argv[i + 1]);
        else FUNC10(vocab_file, (char *)"vocab.txt");
        if ((i = FUNC3((char *)"-save-file", argc, argv)) > 0) FUNC10(save_W_file, argv[i + 1]);
        else FUNC10(save_W_file, (char *)"vectors");
        if ((i = FUNC3((char *)"-gradsq-file", argc, argv)) > 0) {
            FUNC10(save_gradsq_file, argv[i + 1]);
            save_gradsq = 1;
        }
        else if (save_gradsq > 0) FUNC10(save_gradsq_file, (char *)"gradsq");
        if ((i = FUNC3((char *)"-input-file", argc, argv)) > 0) FUNC10(input_file, argv[i + 1]);
        else FUNC10(input_file, (char *)"cooccurrence.shuf.bin");
        if ((i = FUNC3((char *)"-checkpoint-every", argc, argv)) > 0) checkpoint_every = FUNC1(argv[i + 1]);
        
        vocab_size = 0;
        fid = FUNC4(vocab_file, "r");
        if (fid == NULL) {FUNC5(stderr, "Unable to open vocab file %s.\n",vocab_file); return 1;}
        while ((i = FUNC7(fid)) != EOF) if (i == '\n') vocab_size++; // Count number of entries in vocab_file
        FUNC2(fid);
        if (vocab_size == 0) {FUNC5(stderr, "Unable to find any vocab entries in vocab file %s.\n", vocab_file); return 1;}
        result = FUNC11();
        FUNC6(cost);
    }
    FUNC6(vocab_file);
    FUNC6(input_file);
    FUNC6(save_W_file);
    FUNC6(save_gradsq_file);
    return result;
}