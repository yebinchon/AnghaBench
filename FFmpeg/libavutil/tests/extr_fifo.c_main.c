
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
typedef int j ;
struct TYPE_13__ {int rndx; int wndx; } ;
typedef TYPE_1__ AVFifoBuffer ;


 TYPE_1__* av_fifo_alloc (int) ;
 int av_fifo_free (TYPE_1__*) ;
 int av_fifo_generic_peek (TYPE_1__*,int*,int,int *) ;
 int av_fifo_generic_peek_at (TYPE_1__*,int*,int,int,int *) ;
 int av_fifo_generic_read (TYPE_1__*,int*,int,int *) ;
 int av_fifo_generic_write (TYPE_1__*,int*,int,int *) ;
 int av_fifo_grow (TYPE_1__*,int) ;
 scalar_t__ av_fifo_peek2 (TYPE_1__*,int) ;
 int av_fifo_reset (TYPE_1__*) ;
 int av_fifo_size (TYPE_1__*) ;
 int av_fifo_space (TYPE_1__*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (int*) ;
 int* malloc (int) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int stderr ;

int main(void)
{

    AVFifoBuffer *fifo = av_fifo_alloc(13 * sizeof(int));
    int i, j, n, *p;


    for (i = 0; av_fifo_space(fifo) >= sizeof(int); i++)
        av_fifo_generic_write(fifo, &i, sizeof(int), ((void*)0));


    n = av_fifo_size(fifo) / sizeof(int);
    for (i = -n + 1; i < n; i++) {
        int *v = (int *)av_fifo_peek2(fifo, i * sizeof(int));
        printf("%d: %d\n", i, *v);
    }
    printf("\n");


    n = av_fifo_size(fifo) / sizeof(int);
    for (i = 0; i < n; i++) {
        av_fifo_generic_peek_at(fifo, &j, i * sizeof(int), sizeof(j), ((void*)0));
        printf("%d: %d\n", i, j);
    }
    printf("\n");



    n = av_fifo_size(fifo);
    p = malloc(n);
    if (p == ((void*)0)) {
        fprintf(stderr, "failed to allocate memory.\n");
        exit(1);
    }

    (void) av_fifo_generic_peek(fifo, p, n, ((void*)0));


    n /= sizeof(int);
    for(i = 0; i < n; ++i)
        printf("%d: %d\n", i, p[i]);

    putchar('\n');


    for (i = 0; av_fifo_size(fifo) >= sizeof(int); i++) {
        av_fifo_generic_read(fifo, &j, sizeof(int), ((void*)0));
        printf("%d ", j);
    }
    printf("\n");


    av_fifo_reset(fifo);
    fifo->rndx = fifo->wndx = ~(uint32_t)0 - 5;


    for (i = 0; av_fifo_space(fifo) >= sizeof(int); i++)
        av_fifo_generic_write(fifo, &i, sizeof(int), ((void*)0));


    n = av_fifo_size(fifo) / sizeof(int);
    for (i = 0; i < n; i++) {
        av_fifo_generic_peek_at(fifo, &j, i * sizeof(int), sizeof(j), ((void*)0));
        printf("%d: %d\n", i, j);
    }
    putchar('\n');


    (void) av_fifo_grow(fifo, 15 * sizeof(int));


    n = av_fifo_size(fifo) / sizeof(int);
    for (i = n; av_fifo_space(fifo) >= sizeof(int); ++i)
        av_fifo_generic_write(fifo, &i, sizeof(int), ((void*)0));


    n = av_fifo_size(fifo) / sizeof(int);
    for (i = 0; i < n; i++) {
        av_fifo_generic_peek_at(fifo, &j, i * sizeof(int), sizeof(j), ((void*)0));
        printf("%d: %d\n", i, j);
    }

    av_fifo_free(fifo);
    free(p);

    return 0;
}
