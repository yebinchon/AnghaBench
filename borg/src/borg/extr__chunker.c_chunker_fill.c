
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int off_t ;
struct TYPE_3__ {int last; int position; int remaining; scalar_t__ buf_size; int eof; scalar_t__ fh; int bytes_read; int data; int fd; } ;
typedef int PyThreadState ;
typedef int PyObject ;
typedef TYPE_1__ Chunker ;


 int POSIX_FADV_DONTNEED ;
 int PyBytes_AsString (int *) ;
 scalar_t__ PyBytes_Size (int *) ;
 scalar_t__ PyErr_Occurred () ;
 int PyErr_SetFromErrno (int ) ;
 int PyEval_RestoreThread (int *) ;
 int * PyEval_SaveThread () ;
 int PyExc_OSError ;
 int * PyObject_CallMethod (int ,char*,char*,scalar_t__) ;
 int Py_DECREF (int *) ;
 int getpagesize () ;
 int memcpy (int ,int ,scalar_t__) ;
 int memmove (int ,int ,int) ;
 int pagemask ;
 int posix_fadvise (scalar_t__,int,int,int ) ;
 scalar_t__ read (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int
chunker_fill(Chunker *c)
{
    ssize_t n;
    off_t offset, length;
    int overshoot;
    PyObject *data;
    PyThreadState *thread_state;

    memmove(c->data, c->data + c->last, c->position + c->remaining - c->last);
    c->position -= c->last;
    c->last = 0;
    n = c->buf_size - c->position - c->remaining;
    if(c->eof || n == 0) {
        return 1;
    }
    if(c->fh >= 0) {
        thread_state = PyEval_SaveThread();

        offset = c->bytes_read;

        n = read(c->fh, c->data + c->position + c->remaining, n);
        if(n > 0) {
            c->remaining += n;
            c->bytes_read += n;
        }
        else
        if(n == 0) {
            c->eof = 1;
        }
        else {
            PyEval_RestoreThread(thread_state);

            PyErr_SetFromErrno(PyExc_OSError);
            return 0;
        }
        length = c->bytes_read - offset;
        PyEval_RestoreThread(thread_state);
    }
    else {

        data = PyObject_CallMethod(c->fd, "read", "i", n);
        if(!data) {
            return 0;
        }
        n = PyBytes_Size(data);
        if(PyErr_Occurred()) {

            return 0;
        }
        if(n) {
            memcpy(c->data + c->position + c->remaining, PyBytes_AsString(data), n);
            c->remaining += n;
            c->bytes_read += n;
        }
        else {
            c->eof = 1;
        }
        Py_DECREF(data);
    }
    return 1;
}
