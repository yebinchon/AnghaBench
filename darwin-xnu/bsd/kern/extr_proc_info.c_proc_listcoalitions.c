
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ user_addr_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int EINVAL ;
 int ENOMEM ;
 int ENOTSUP ;

 int LISTCOALITIONS_ALL_COALS_SIZE ;

 int LISTCOALITIONS_SINGLE_TYPE_SIZE ;
 int bzero (void*,int) ;
 int coalitions_get_list (int,void*,int) ;
 int copyout (void*,scalar_t__,int) ;
 void* kalloc (int ) ;
 int kfree (void*,int) ;
 int panic (char*) ;

int proc_listcoalitions(int flavor, int type, user_addr_t buffer,
   uint32_t buffersize, int32_t *retval)
{
 (void)flavor;
 (void)type;
 (void)buffer;
 (void)buffersize;
 (void)retval;
 return ENOTSUP;

}
