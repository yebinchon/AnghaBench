
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fh; scalar_t__ eof; scalar_t__ last; scalar_t__ position; scalar_t__ bytes_yielded; scalar_t__ bytes_read; scalar_t__ remaining; scalar_t__ done; int * fd; } ;
typedef int PyObject ;
typedef TYPE_1__ Chunker ;


 int Py_INCREF (int *) ;
 int Py_XDECREF (int *) ;

__attribute__((used)) static void
chunker_set_fd(Chunker *c, PyObject *fd, int fh)
{
    Py_XDECREF(c->fd);
    c->fd = fd;
    Py_INCREF(fd);
    c->fh = fh;
    c->done = 0;
    c->remaining = 0;
    c->bytes_read = 0;
    c->bytes_yielded = 0;
    c->position = 0;
    c->last = 0;
    c->eof = 0;
}
