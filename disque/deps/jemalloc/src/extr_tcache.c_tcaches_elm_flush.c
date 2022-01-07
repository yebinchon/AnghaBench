
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_3__ {int * tcache; } ;
typedef TYPE_1__ tcaches_t ;


 int tcache_destroy (int *,int *) ;

__attribute__((used)) static void
tcaches_elm_flush(tsd_t *tsd, tcaches_t *elm)
{

 if (elm->tcache == ((void*)0))
  return;
 tcache_destroy(tsd, elm->tcache);
 elm->tcache = ((void*)0);
}
