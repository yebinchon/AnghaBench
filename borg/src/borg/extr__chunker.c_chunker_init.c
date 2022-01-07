
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {size_t window_size; size_t min_size; size_t buf_size; int fh; int data; int table; int chunk_mask; } ;
typedef TYPE_1__ Chunker ;


 int buzhash_init_table (int ) ;
 TYPE_1__* calloc (int,int) ;
 int malloc (size_t) ;

__attribute__((used)) static Chunker *
chunker_init(size_t window_size, uint32_t chunk_mask, size_t min_size, size_t max_size, uint32_t seed)
{
    Chunker *c = calloc(sizeof(Chunker), 1);
    c->window_size = window_size;
    c->chunk_mask = chunk_mask;
    c->min_size = min_size;
    c->table = buzhash_init_table(seed);
    c->buf_size = max_size;
    c->data = malloc(c->buf_size);
    c->fh = -1;
    return c;
}
