
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EBUSY ;
 int ETIMEDOUT ;
 int STACKSHOT_GET_GLOBAL_MEM_STATS ;
 int STACKSHOT_KCDATA_FORMAT ;
 int STACKSHOT_SAVE_IMP_DONATION_PIDS ;
 int STACKSHOT_SAVE_LOADINFO ;
 int T_ASSERT_NOTNULL (void*,char*) ;
 int T_ASSERT_POSIX_ZERO (int,char*) ;
 int T_EXPECT_POSIX_ZERO (int,char*) ;
 int T_QUIET ;
 int stackshot_capture_with_config (void*) ;
 void* stackshot_config_create () ;
 int stackshot_config_dealloc (void*) ;
 int stackshot_config_set_flags (void*,int) ;

__attribute__((used)) static void
take_stackshot(void)
{
 uint32_t stackshot_flags = (STACKSHOT_SAVE_LOADINFO | STACKSHOT_GET_GLOBAL_MEM_STATS |
    STACKSHOT_SAVE_IMP_DONATION_PIDS | STACKSHOT_KCDATA_FORMAT);

 void *config = stackshot_config_create();
 T_QUIET; T_ASSERT_NOTNULL(config, "created stackshot config");

 int ret = stackshot_config_set_flags(config, stackshot_flags);
 T_QUIET; T_ASSERT_POSIX_ZERO(ret, "set flags on stackshot config");

 int retries_remaining = 5;

retry:
 ret = stackshot_capture_with_config(config);

 if (ret == EBUSY || ret == ETIMEDOUT) {
  if (retries_remaining > 0) {
   retries_remaining--;
   goto retry;
  } else {
   T_QUIET; T_ASSERT_POSIX_ZERO(ret,
     "called stackshot_capture_with_config (no retries remaining)");
  }
 } else {
   T_QUIET; T_ASSERT_POSIX_ZERO(ret, "called stackshot_capture_with_config");
 }

 ret = stackshot_config_dealloc(config);
 T_QUIET; T_EXPECT_POSIX_ZERO(ret, "deallocated stackshot config");
}
