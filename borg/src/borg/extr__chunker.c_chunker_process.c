
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int chunk_mask; size_t min_size; size_t window_size; int done; scalar_t__ bytes_read; scalar_t__ bytes_yielded; size_t remaining; int position; size_t last; int * data; int table; scalar_t__ eof; } ;
typedef int PyObject ;
typedef TYPE_1__ Chunker ;


 int PyBUF_READ ;
 int PyErr_SetNone (int ) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_Exception ;
 int PyExc_StopIteration ;
 int * PyMemoryView_FromMemory (char*,size_t,int ) ;
 int buzhash (int *,size_t,int ) ;
 int buzhash_update (int,int ,int ,size_t,int ) ;
 int chunker_fill (TYPE_1__*) ;

__attribute__((used)) static PyObject *
chunker_process(Chunker *c)
{
    uint32_t sum, chunk_mask = c->chunk_mask;
    size_t n = 0, old_last, min_size = c->min_size, window_size = c->window_size;

    if(c->done) {
        if(c->bytes_read == c->bytes_yielded)
            PyErr_SetNone(PyExc_StopIteration);
        else
            PyErr_SetString(PyExc_Exception, "chunkifier byte count mismatch");
        return ((void*)0);
    }
    while(c->remaining < min_size + window_size + 1 && !c->eof) {
        if(!chunker_fill(c)) {
            return ((void*)0);
        }
    }

    if(c->eof) {
        c->done = 1;
        if(c->remaining) {
            c->bytes_yielded += c->remaining;
            return PyMemoryView_FromMemory((char *)(c->data + c->position), c->remaining, PyBUF_READ);
        }
        else {
            if(c->bytes_read == c->bytes_yielded)
                PyErr_SetNone(PyExc_StopIteration);
            else
                PyErr_SetString(PyExc_Exception, "chunkifier byte count mismatch");
            return ((void*)0);
        }
    }




    c->position += min_size;
    c->remaining -= min_size;
    n += min_size;
    sum = buzhash(c->data + c->position, window_size, c->table);
    while(c->remaining > c->window_size && (sum & chunk_mask)) {
        sum = buzhash_update(sum, c->data[c->position],
                             c->data[c->position + window_size],
                             window_size, c->table);
        c->position++;
        c->remaining--;
        n++;
        if(c->remaining <= window_size) {
            if(!chunker_fill(c)) {
                return ((void*)0);
            }
        }
    }
    if(c->remaining <= window_size) {
        c->position += c->remaining;
        c->remaining = 0;
    }
    old_last = c->last;
    c->last = c->position;
    n = c->last - old_last;
    c->bytes_yielded += n;
    return PyMemoryView_FromMemory((char *)(c->data + old_last), n, PyBUF_READ);
}
