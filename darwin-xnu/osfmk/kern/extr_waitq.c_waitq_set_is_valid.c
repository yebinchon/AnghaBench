
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ waitq_isvalid; } ;
struct waitq_set {TYPE_1__ wqset_q; } ;


 scalar_t__ waitqs_is_set (struct waitq_set*) ;

int waitq_set_is_valid(struct waitq_set *wqset)
{
 return (wqset != ((void*)0)) && wqset->wqset_q.waitq_isvalid && waitqs_is_set(wqset);
}
