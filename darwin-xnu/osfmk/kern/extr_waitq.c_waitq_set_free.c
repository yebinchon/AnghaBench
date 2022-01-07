
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq_set {int dummy; } ;
typedef int kern_return_t ;


 int KERN_SUCCESS ;
 int memset (struct waitq_set*,int ,int) ;
 int waitq_set_deinit (struct waitq_set*) ;
 int waitq_set_zone ;
 int zfree (int ,struct waitq_set*) ;

kern_return_t waitq_set_free(struct waitq_set *wqset)
{
 waitq_set_deinit(wqset);

 memset(wqset, 0, sizeof(*wqset));
 zfree(waitq_set_zone, wqset);

 return KERN_SUCCESS;
}
