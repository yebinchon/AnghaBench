
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fd; struct TYPE_4__* next; struct TYPE_4__* inb; } ;
typedef TYPE_1__ Source ;


 int close (scalar_t__) ;
 TYPE_1__* cursource ;
 int dofree (TYPE_1__*) ;

void
unsetsource(void)
{
 Source *s = cursource;

 if (s->fd>=0) {
  close(s->fd);
  dofree(s->inb);
 }
 cursource = s->next;
 dofree(s);
}
