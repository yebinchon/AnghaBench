
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int * tcaches ;
 int tcaches_elm_flush (int *,int *) ;

void
tcaches_flush(tsd_t *tsd, unsigned ind)
{

 tcaches_elm_flush(tsd, &tcaches[ind]);
}
