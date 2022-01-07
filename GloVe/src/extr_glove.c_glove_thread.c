
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef double real ;
struct TYPE_3__ {int word1; int word2; int val; } ;
typedef int FILE ;
typedef TYPE_1__ CREC ;


 int SEEK_SET ;
 double* W ;
 int alpha ;
 scalar_t__ check_nan (double) ;
 scalar_t__* cost ;
 double eta ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int ,char*) ;
 int fread (TYPE_1__*,int,int,int *) ;
 int free (double*) ;
 int fseeko (int *,long long,int ) ;
 double* gradsq ;
 int input_file ;
 scalar_t__ isinf (double) ;
 scalar_t__ isnan (double) ;
 long long* lines_per_thread ;
 double log (int) ;
 scalar_t__ malloc (int) ;
 long long num_lines ;
 long long num_threads ;
 double pow (int,int ) ;
 int pthread_exit (int *) ;
 double sqrt (double) ;
 int stderr ;
 int vector_size ;
 long long vocab_size ;
 int x_max ;

void *glove_thread(void *vid) {
    long long a, b ,l1, l2;
    long long id = *(long long*)vid;
    CREC cr;
    real diff, fdiff, temp1, temp2;
    FILE *fin;
    fin = fopen(input_file, "rb");
    fseeko(fin, (num_lines / num_threads * id) * (sizeof(CREC)), SEEK_SET);
    cost[id] = 0;

    real* W_updates1 = (real*)malloc(vector_size * sizeof(real));
    real* W_updates2 = (real*)malloc(vector_size * sizeof(real));
    for (a = 0; a < lines_per_thread[id]; a++) {
        fread(&cr, sizeof(CREC), 1, fin);
        if (feof(fin)) break;
        if (cr.word1 < 1 || cr.word2 < 1) { continue; }


        l1 = (cr.word1 - 1LL) * (vector_size + 1);
        l2 = ((cr.word2 - 1LL) + vocab_size) * (vector_size + 1);


        diff = 0;
        for (b = 0; b < vector_size; b++) diff += W[b + l1] * W[b + l2];
        diff += W[vector_size + l1] + W[vector_size + l2] - log(cr.val);
        fdiff = (cr.val > x_max) ? diff : pow(cr.val / x_max, alpha) * diff;


        if (isnan(diff) || isnan(fdiff) || isinf(diff) || isinf(fdiff)) {
            fprintf(stderr,"Caught NaN in diff for kdiff for thread. Skipping update");
            continue;
        }

        cost[id] += 0.5 * fdiff * diff;


        fdiff *= eta;
        real W_updates1_sum = 0;
        real W_updates2_sum = 0;
        for (b = 0; b < vector_size; b++) {

            temp1 = fdiff * W[b + l2];
            temp2 = fdiff * W[b + l1];

            W_updates1[b] = temp1 / sqrt(gradsq[b + l1]);
            W_updates2[b] = temp2 / sqrt(gradsq[b + l2]);
            W_updates1_sum += W_updates1[b];
            W_updates2_sum += W_updates2[b];
            gradsq[b + l1] += temp1 * temp1;
            gradsq[b + l2] += temp2 * temp2;
        }
        if (!isnan(W_updates1_sum) && !isinf(W_updates1_sum) && !isnan(W_updates2_sum) && !isinf(W_updates2_sum)) {
            for (b = 0; b < vector_size; b++) {
                W[b + l1] -= W_updates1[b];
                W[b + l2] -= W_updates2[b];
            }
        }


        W[vector_size + l1] -= check_nan(fdiff / sqrt(gradsq[vector_size + l1]));
        W[vector_size + l2] -= check_nan(fdiff / sqrt(gradsq[vector_size + l2]));
        fdiff *= fdiff;
        gradsq[vector_size + l1] += fdiff;
        gradsq[vector_size + l2] += fdiff;

    }
    free(W_updates1);
    free(W_updates2);

    fclose(fin);
    pthread_exit(((void*)0));
}
