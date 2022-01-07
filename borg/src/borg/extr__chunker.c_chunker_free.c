
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; struct TYPE_4__* table; int fd; } ;
typedef TYPE_1__ Chunker ;


 int Py_XDECREF (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void
chunker_free(Chunker *c)
{
    Py_XDECREF(c->fd);
    free(c->table);
    free(c->data);
    free(c);
}
