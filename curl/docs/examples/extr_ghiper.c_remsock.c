
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ev; } ;
typedef TYPE_1__ SockInfo ;


 int g_free (TYPE_1__*) ;
 int g_source_remove (scalar_t__) ;

__attribute__((used)) static void remsock(SockInfo *f)
{
  if(!f) {
    return;
  }
  if(f->ev) {
    g_source_remove(f->ev);
  }
  g_free(f);
}
