
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cothread_t ;


 int free (int ) ;
 int genode_free_secondary_stack (int ) ;

void co_delete(cothread_t handle)
{



   free(handle);

}
