#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* word; long long count; } ;
typedef  TYPE_1__ VOCAB ;
struct TYPE_9__ {char* word; long long count; struct TYPE_9__* next; } ;
typedef  TYPE_2__ HASHREC ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CompareVocab ; 
 int /*<<< orphan*/  CompareVocabTie ; 
 int /*<<< orphan*/  MAX_STRING_LENGTH ; 
 long long TSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,char*) ; 
 TYPE_2__** FUNC4 () ; 
 TYPE_1__* FUNC5 (int) ; 
 long long max_vocab ; 
 long long min_count ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,long long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,long long,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int verbose ; 

int FUNC10() {
    long long i = 0, j = 0, vocab_size = 12500;
    // char format[20];
    char str[MAX_STRING_LENGTH + 1];
    HASHREC **vocab_hash = FUNC4();
    HASHREC *htmp;
    VOCAB *vocab;
    FILE *fid = stdin;
    
    FUNC1(stderr, "BUILDING VOCABULARY\n");
    if (verbose > 1) FUNC1(stderr, "Processed %lld tokens.", i);
    // sprintf(format,"%%%ds",MAX_STRING_LENGTH);
    while ( ! FUNC0(fid)) {
        // Insert all tokens into hashtable
        int nl = FUNC2(str, fid);
        if (nl) continue; // just a newline marker or feof
        if (FUNC9(str, "<unk>") == 0) {
            FUNC1(stderr, "\nError, <unk> vector found in corpus.\nPlease remove <unk>s from your corpus (e.g. cat text8 | sed -e 's/<unk>/<raw_unk>/g' > text8.new)");
            return 1;
        }
        FUNC3(vocab_hash, str);
        if (((++i)%100000) == 0) if (verbose > 1) FUNC1(stderr,"\033[11G%lld tokens.", i);
    }
    if (verbose > 1) FUNC1(stderr, "\033[0GProcessed %lld tokens.\n", i);
    vocab = FUNC5(sizeof(VOCAB) * vocab_size);
    for (i = 0; i < TSIZE; i++) { // Migrate vocab to array
        htmp = vocab_hash[i];
        while (htmp != NULL) {
            vocab[j].word = htmp->word;
            vocab[j].count = htmp->count;
            j++;
            if (j>=vocab_size) {
                vocab_size += 2500;
                vocab = (VOCAB *)FUNC8(vocab, sizeof(VOCAB) * vocab_size);
            }
            htmp = htmp->next;
        }
    }
    if (verbose > 1) FUNC1(stderr, "Counted %lld unique words.\n", j);
    if (max_vocab > 0 && max_vocab < j)
        // If the vocabulary exceeds limit, first sort full vocab by frequency without alphabetical tie-breaks.
        // This results in pseudo-random ordering for words with same frequency, so that when truncated, the words span whole alphabet
        FUNC7(vocab, j, sizeof(VOCAB), CompareVocab);
    else max_vocab = j;
    FUNC7(vocab, max_vocab, sizeof(VOCAB), CompareVocabTie); //After (possibly) truncating, sort (possibly again), breaking ties alphabetically
    
    for (i = 0; i < max_vocab; i++) {
        if (vocab[i].count < min_count) { // If a minimum frequency cutoff exists, truncate vocabulary
            if (verbose > 0) FUNC1(stderr, "Truncating vocabulary at min count %lld.\n",min_count);
            break;
        }
        FUNC6("%s %lld\n",vocab[i].word,vocab[i].count);
    }
    
    if (i == max_vocab && max_vocab < j) if (verbose > 0) FUNC1(stderr, "Truncating vocabulary at size %lld.\n", max_vocab);
    FUNC1(stderr, "Using vocabulary of size %lld.\n\n", i);
    return 0;
}