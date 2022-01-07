
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double real ;


 scalar_t__ RAND_MAX ;
 double* W ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 double* gradsq ;
 long long posix_memalign (void**,int,int) ;
 double rand () ;
 int stderr ;
 int vector_size ;
 int vocab_size ;

void initialize_parameters() {
    long long a, b;
    vector_size++;


    a = posix_memalign((void **)&W, 128, 2 * vocab_size * vector_size * sizeof(real));
    if (W == ((void*)0)) {
        fprintf(stderr, "Error allocating memory for W\n");
        exit(1);
    }
    a = posix_memalign((void **)&gradsq, 128, 2 * vocab_size * vector_size * sizeof(real));
    if (gradsq == ((void*)0)) {
        fprintf(stderr, "Error allocating memory for gradsq\n");
        exit(1);
    }
    for (b = 0; b < vector_size; b++) {
        for (a = 0; a < 2 * vocab_size; a++) {
            W[a * vector_size + b] = (rand() / (real)RAND_MAX - 0.5) / vector_size;
        }
    }
    for (b = 0; b < vector_size; b++) {
        for (a = 0; a < 2 * vocab_size; a++) {
            gradsq[a * vector_size + b] = 1.0;
        }
    }
    vector_size--;
}
