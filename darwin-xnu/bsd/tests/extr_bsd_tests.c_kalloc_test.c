
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int kern_return_t ;


 int KERN_SUCCESS ;
 int T_ASSERT_NOTNULL (int *,char*) ;
 int T_LOG (char*) ;
 int * kalloc (size_t) ;
 int kfree (int *,size_t) ;

kern_return_t
kalloc_test()
{
 uint64_t * data_ptr;
 size_t alloc_size;

 T_LOG("Running kalloc test.\n");

 alloc_size = sizeof(uint64_t);
 data_ptr = kalloc(alloc_size);
 T_ASSERT_NOTNULL(data_ptr, "kalloc sizeof(uint64_t) return not null");
 kfree(data_ptr, alloc_size);

 alloc_size = 3544;
 data_ptr = kalloc(alloc_size);
 T_ASSERT_NOTNULL(data_ptr, "kalloc 3544 return not null");
 kfree(data_ptr, alloc_size);

 return KERN_SUCCESS;
}
