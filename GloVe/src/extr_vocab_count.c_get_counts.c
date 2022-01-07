
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* word; long long count; } ;
typedef TYPE_1__ VOCAB ;
struct TYPE_9__ {char* word; long long count; struct TYPE_9__* next; } ;
typedef TYPE_2__ HASHREC ;
typedef int FILE ;


 int CompareVocab ;
 int CompareVocabTie ;
 int MAX_STRING_LENGTH ;
 long long TSIZE ;
 int feof (int *) ;
 int fprintf (int ,char*,...) ;
 int get_word (char*,int *) ;
 int hashinsert (TYPE_2__**,char*) ;
 TYPE_2__** inithashtable () ;
 TYPE_1__* malloc (int) ;
 long long max_vocab ;
 long long min_count ;
 int printf (char*,char*,long long) ;
 int qsort (TYPE_1__*,long long,int,int ) ;
 scalar_t__ realloc (TYPE_1__*,int) ;
 int stderr ;
 int * stdin ;
 scalar_t__ strcmp (char*,char*) ;
 int verbose ;

int get_counts() {
    long long i = 0, j = 0, vocab_size = 12500;

    char str[MAX_STRING_LENGTH + 1];
    HASHREC **vocab_hash = inithashtable();
    HASHREC *htmp;
    VOCAB *vocab;
    FILE *fid = stdin;

    fprintf(stderr, "BUILDING VOCABULARY\n");
    if (verbose > 1) fprintf(stderr, "Processed %lld tokens.", i);

    while ( ! feof(fid)) {

        int nl = get_word(str, fid);
        if (nl) continue;
        if (strcmp(str, "<unk>") == 0) {
            fprintf(stderr, "\nError, <unk> vector found in corpus.\nPlease remove <unk>s from your corpus (e.g. cat text8 | sed -e 's/<unk>/<raw_unk>/g' > text8.new)");
            return 1;
        }
        hashinsert(vocab_hash, str);
        if (((++i)%100000) == 0) if (verbose > 1) fprintf(stderr,"\033[11G%lld tokens.", i);
    }
    if (verbose > 1) fprintf(stderr, "\033[0GProcessed %lld tokens.\n", i);
    vocab = malloc(sizeof(VOCAB) * vocab_size);
    for (i = 0; i < TSIZE; i++) {
        htmp = vocab_hash[i];
        while (htmp != ((void*)0)) {
            vocab[j].word = htmp->word;
            vocab[j].count = htmp->count;
            j++;
            if (j>=vocab_size) {
                vocab_size += 2500;
                vocab = (VOCAB *)realloc(vocab, sizeof(VOCAB) * vocab_size);
            }
            htmp = htmp->next;
        }
    }
    if (verbose > 1) fprintf(stderr, "Counted %lld unique words.\n", j);
    if (max_vocab > 0 && max_vocab < j)


        qsort(vocab, j, sizeof(VOCAB), CompareVocab);
    else max_vocab = j;
    qsort(vocab, max_vocab, sizeof(VOCAB), CompareVocabTie);

    for (i = 0; i < max_vocab; i++) {
        if (vocab[i].count < min_count) {
            if (verbose > 0) fprintf(stderr, "Truncating vocabulary at min count %lld.\n",min_count);
            break;
        }
        printf("%s %lld\n",vocab[i].word,vocab[i].count);
    }

    if (i == max_vocab && max_vocab < j) if (verbose > 0) fprintf(stderr, "Truncating vocabulary at size %lld.\n", max_vocab);
    fprintf(stderr, "Using vocabulary of size %lld.\n\n", i);
    return 0;
}
