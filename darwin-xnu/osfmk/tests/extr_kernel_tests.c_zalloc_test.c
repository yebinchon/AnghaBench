
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* zone_t ;
typedef int uint64_t ;
typedef int kern_return_t ;


 int KERN_SUCCESS ;
 int T_ASSERT_EQ_INT (int ,int ,int *) ;
 int T_ASSERT_NOTNULL (void*,int *) ;
 int T_PERF (char*,int ,char*,char*) ;
 int T_SETUPBEGIN ;
 int T_SETUPEND ;
 int threads_count ;
 void* zalloc (void*) ;
 int zfree (void*,void*) ;
 void* zinit (int,int,int,char*) ;
 int zone_free_count (void*) ;

kern_return_t
zalloc_test()
{
 zone_t test_zone;
 void * test_ptr;

 T_SETUPBEGIN;
 test_zone = zinit(sizeof(uint64_t), 100 * sizeof(uint64_t), sizeof(uint64_t), "test_uint64_zone");
 T_ASSERT_NOTNULL(test_zone, ((void*)0));

 T_ASSERT_EQ_INT(zone_free_count(test_zone), 0, ((void*)0));
 T_SETUPEND;

 T_ASSERT_NOTNULL(test_ptr = zalloc(test_zone), ((void*)0));

 zfree(test_zone, test_ptr);


 T_PERF("num_threads_at_ktest", threads_count, "count", "# of threads in system at zalloc_test");

 return KERN_SUCCESS;
}
