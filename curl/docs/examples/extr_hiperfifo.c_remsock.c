
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ev; } ;
typedef TYPE_1__ SockInfo ;


 int event_del (int *) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void remsock(SockInfo *f)
{
  if(f) {
    event_del(&f->ev);
    free(f);
  }
}
