#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  double real ;
struct TYPE_3__ {int word1; int word2; int val; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ CREC ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 double* W ; 
 int /*<<< orphan*/  alpha ; 
 scalar_t__ FUNC0 (double) ; 
 scalar_t__* cost ; 
 double eta ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (double*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,long long,int /*<<< orphan*/ ) ; 
 double* gradsq ; 
 int /*<<< orphan*/  input_file ; 
 scalar_t__ FUNC8 (double) ; 
 scalar_t__ FUNC9 (double) ; 
 long long* lines_per_thread ; 
 double FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 long long num_lines ; 
 long long num_threads ; 
 double FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 double FUNC14 (double) ; 
 int /*<<< orphan*/  stderr ; 
 int vector_size ; 
 long long vocab_size ; 
 int x_max ; 

void *FUNC15(void *vid) {
    long long a, b ,l1, l2;
    long long id = *(long long*)vid;
    CREC cr;
    real diff, fdiff, temp1, temp2;
    FILE *fin;
    fin = FUNC3(input_file, "rb");
    FUNC7(fin, (num_lines / num_threads * id) * (sizeof(CREC)), SEEK_SET); //Threads spaced roughly equally throughout file
    cost[id] = 0;
    
    real* W_updates1 = (real*)FUNC11(vector_size * sizeof(real));
    real* W_updates2 = (real*)FUNC11(vector_size * sizeof(real));
    for (a = 0; a < lines_per_thread[id]; a++) {
        FUNC5(&cr, sizeof(CREC), 1, fin);
        if (FUNC2(fin)) break;
        if (cr.word1 < 1 || cr.word2 < 1) { continue; }
        
        /* Get location of words in W & gradsq */
        l1 = (cr.word1 - 1LL) * (vector_size + 1); // cr word indices start at 1
        l2 = ((cr.word2 - 1LL) + vocab_size) * (vector_size + 1); // shift by vocab_size to get separate vectors for context words
        
        /* Calculate cost, save diff for gradients */
        diff = 0;
        for (b = 0; b < vector_size; b++) diff += W[b + l1] * W[b + l2]; // dot product of word and context word vector
        diff += W[vector_size + l1] + W[vector_size + l2] - FUNC10(cr.val); // add separate bias for each word
        fdiff = (cr.val > x_max) ? diff : FUNC12(cr.val / x_max, alpha) * diff; // multiply weighting function (f) with diff

        // Check for NaN and inf() in the diffs.
        if (FUNC9(diff) || FUNC9(fdiff) || FUNC8(diff) || FUNC8(fdiff)) {
            FUNC4(stderr,"Caught NaN in diff for kdiff for thread. Skipping update");
            continue;
        }

        cost[id] += 0.5 * fdiff * diff; // weighted squared error
        
        /* Adaptive gradient updates */
        fdiff *= eta; // for ease in calculating gradient
        real W_updates1_sum = 0;
        real W_updates2_sum = 0;
        for (b = 0; b < vector_size; b++) {
            // learning rate times gradient for word vectors
            temp1 = fdiff * W[b + l2];
            temp2 = fdiff * W[b + l1];
            // adaptive updates
            W_updates1[b] = temp1 / FUNC14(gradsq[b + l1]);
            W_updates2[b] = temp2 / FUNC14(gradsq[b + l2]);
            W_updates1_sum += W_updates1[b];
            W_updates2_sum += W_updates2[b];
            gradsq[b + l1] += temp1 * temp1;
            gradsq[b + l2] += temp2 * temp2;
        }
        if (!FUNC9(W_updates1_sum) && !FUNC8(W_updates1_sum) && !FUNC9(W_updates2_sum) && !FUNC8(W_updates2_sum)) {
            for (b = 0; b < vector_size; b++) {
                W[b + l1] -= W_updates1[b];
                W[b + l2] -= W_updates2[b];
            }
        }

        // updates for bias terms
        W[vector_size + l1] -= FUNC0(fdiff / FUNC14(gradsq[vector_size + l1]));
        W[vector_size + l2] -= FUNC0(fdiff / FUNC14(gradsq[vector_size + l2]));
        fdiff *= fdiff;
        gradsq[vector_size + l1] += fdiff;
        gradsq[vector_size + l2] += fdiff;
        
    }
    FUNC6(W_updates1);
    FUNC6(W_updates2);
    
    FUNC1(fin);
    FUNC13(NULL);
}