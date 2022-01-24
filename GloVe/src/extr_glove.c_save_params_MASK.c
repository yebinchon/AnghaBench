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
 int MAX_STRING_LENGTH ; 
 int* W ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int,int /*<<< orphan*/ *) ; 
 int* gradsq ; 
 char* FUNC7 (int) ; 
 int model ; 
 char* save_W_file ; 
 scalar_t__ save_gradsq ; 
 char* save_gradsq_file ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int use_binary ; 
 scalar_t__ use_unk_vec ; 
 int vector_size ; 
 char* vocab_file ; 
 long long vocab_size ; 
 scalar_t__ write_header ; 

int FUNC10(int nb_iter) {
    /*
     * nb_iter is the number of iteration (= a full pass through the cooccurrence matrix).
     *   nb_iter > 0 => checkpointing the intermediate parameters, so nb_iter is in the filename of output file.
     *   else        => saving the final paramters, so nb_iter is ignored.
     */

    long long a, b;
    char format[20];
    char output_file[MAX_STRING_LENGTH], output_file_gsq[MAX_STRING_LENGTH];
    char *word = FUNC7(sizeof(char) * MAX_STRING_LENGTH + 1);
    FILE *fid, *fout, *fgs;
    
    if (use_binary > 0) { // Save parameters in binary file
        if (nb_iter <= 0)
            FUNC8(output_file,"%s.bin",save_W_file);
        else
            FUNC8(output_file,"%s.%03d.bin",save_W_file,nb_iter);

        fout = FUNC2(output_file,"wb");
        if (fout == NULL) {FUNC3(&stderr, "Unable to open file %s.\n",save_W_file); return 1;}
        for (a = 0; a < 2 * (long long)vocab_size * (vector_size + 1); a++) FUNC6(&W[a], sizeof(real), 1,fout);
        FUNC1(fout);
        if (save_gradsq > 0) {
            if (nb_iter <= 0)
                FUNC8(output_file_gsq,"%s.bin",save_gradsq_file);
            else
                FUNC8(output_file_gsq,"%s.%03d.bin",save_gradsq_file,nb_iter);

            fgs = FUNC2(output_file_gsq,"wb");
            if (fgs == NULL) {FUNC3(&stderr, "Unable to open file %s.\n",save_gradsq_file); return 1;}
            for (a = 0; a < 2 * (long long)vocab_size * (vector_size + 1); a++) FUNC6(&gradsq[a], sizeof(real), 1,fgs);
            FUNC1(fgs);
        }
    }
    if (use_binary != 1) { // Save parameters in text file
        if (nb_iter <= 0)
            FUNC8(output_file,"%s.txt",save_W_file);
        else
            FUNC8(output_file,"%s.%03d.txt",save_W_file,nb_iter);
        if (save_gradsq > 0) {
            if (nb_iter <= 0)
                FUNC8(output_file_gsq,"%s.txt",save_gradsq_file);
            else
                FUNC8(output_file_gsq,"%s.%03d.txt",save_gradsq_file,nb_iter);

            fgs = FUNC2(output_file_gsq,"wb");
            if (fgs == NULL) {FUNC3(&stderr, "Unable to open file %s.\n",save_gradsq_file); return 1;}
        }
        fout = FUNC2(output_file,"wb");
        if (fout == NULL) {FUNC3(&stderr, "Unable to open file %s.\n",save_W_file); return 1;}
        fid = FUNC2(vocab_file, "r");
        FUNC8(format,"%%%ds",MAX_STRING_LENGTH);
        if (fid == NULL) {FUNC3(&stderr, "Unable to open file %s.\n",vocab_file); return 1;}
        if (write_header) FUNC3(fout, "%lld %d\n", vocab_size, vector_size);
        for (a = 0; a < vocab_size; a++) {
            if (FUNC5(fid,format,word) == 0) return 1;
            // input vocab cannot contain special <unk> keyword
            if (FUNC9(word, "<unk>") == 0) return 1;
            FUNC3(fout, "%s",word);
            if (model == 0) { // Save all parameters (including bias)
                for (b = 0; b < (vector_size + 1); b++) FUNC3(fout," %lf", W[a * (vector_size + 1) + b]);
                for (b = 0; b < (vector_size + 1); b++) FUNC3(fout," %lf", W[(vocab_size + a) * (vector_size + 1) + b]);
            }
            if (model == 1) // Save only "word" vectors (without bias)
                for (b = 0; b < vector_size; b++) FUNC3(fout," %lf", W[a * (vector_size + 1) + b]);
            if (model == 2) // Save "word + context word" vectors (without bias)
                for (b = 0; b < vector_size; b++) FUNC3(fout," %lf", W[a * (vector_size + 1) + b] + W[(vocab_size + a) * (vector_size + 1) + b]);
            FUNC3(fout,"\n");
            if (save_gradsq > 0) { // Save gradsq
                FUNC3(fgs, "%s",word);
                for (b = 0; b < (vector_size + 1); b++) FUNC3(fgs," %lf", gradsq[a * (vector_size + 1) + b]);
                for (b = 0; b < (vector_size + 1); b++) FUNC3(fgs," %lf", gradsq[(vocab_size + a) * (vector_size + 1) + b]);
                FUNC3(fgs,"\n");
            }
            if (FUNC5(fid,format,word) == 0) return 1; // Eat irrelevant frequency entry
        }

        if (use_unk_vec) {
            real* unk_vec = (real*)FUNC0((vector_size + 1), sizeof(real));
            real* unk_context = (real*)FUNC0((vector_size + 1), sizeof(real));
            word = "<unk>";

            int num_rare_words = vocab_size < 100 ? vocab_size : 100;

            for (a = vocab_size - num_rare_words; a < vocab_size; a++) {
                for (b = 0; b < (vector_size + 1); b++) {
                    unk_vec[b] += W[a * (vector_size + 1) + b] / num_rare_words;
                    unk_context[b] += W[(vocab_size + a) * (vector_size + 1) + b] / num_rare_words;
                }
            }

            FUNC3(fout, "%s",word);
            if (model == 0) { // Save all parameters (including bias)
                for (b = 0; b < (vector_size + 1); b++) FUNC3(fout," %lf", unk_vec[b]);
                for (b = 0; b < (vector_size + 1); b++) FUNC3(fout," %lf", unk_context[b]);
            }
            if (model == 1) // Save only "word" vectors (without bias)
                for (b = 0; b < vector_size; b++) FUNC3(fout," %lf", unk_vec[b]);
            if (model == 2) // Save "word + context word" vectors (without bias)
                for (b = 0; b < vector_size; b++) FUNC3(fout," %lf", unk_vec[b] + unk_context[b]);
            FUNC3(fout,"\n");

            FUNC4(unk_vec);
            FUNC4(unk_context);
        }

        FUNC1(fid);
        FUNC1(fout);
        if (save_gradsq > 0) FUNC1(fgs);
    }
    return 0;
}