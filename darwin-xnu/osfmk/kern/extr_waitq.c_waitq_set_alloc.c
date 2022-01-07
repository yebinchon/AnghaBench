
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq_set {int dummy; } ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int panic (char*,int ) ;
 scalar_t__ waitq_set_init (struct waitq_set*,int,int *,void*) ;
 int waitq_set_zone ;
 scalar_t__ zalloc (int ) ;
 int zfree (int ,struct waitq_set*) ;

struct waitq_set *waitq_set_alloc(int policy, void *prepost_hook)
{
 struct waitq_set *wqset;

 wqset = (struct waitq_set *)zalloc(waitq_set_zone);
 if (!wqset)
  panic("Can't allocate a new waitq set from zone %p", waitq_set_zone);

 kern_return_t ret;
 ret = waitq_set_init(wqset, policy, ((void*)0), prepost_hook);
 if (ret != KERN_SUCCESS) {
  zfree(waitq_set_zone, wqset);
  wqset = ((void*)0);
 }

 return wqset;
}
