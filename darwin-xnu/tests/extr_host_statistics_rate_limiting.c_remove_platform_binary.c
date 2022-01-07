
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int my_csflags ;


 int CS_OPS_CLEARPLATFORM ;
 int CS_OPS_STATUS ;
 int CS_PLATFORM_BINARY ;

 int T_ASSERT_POSIX_ZERO (int,int *) ;
 int T_LOG (char*) ;
 int T_QUIET ;
 int csops (int ,int ,int*,int) ;
 int errno ;
 int getpid () ;

__attribute__((used)) static int
remove_platform_binary(void){
 int ret;
 uint32_t my_csflags;

 T_QUIET; T_ASSERT_POSIX_ZERO(csops(getpid(), CS_OPS_STATUS, &my_csflags, sizeof(my_csflags)), ((void*)0));

 if (!(my_csflags & CS_PLATFORM_BINARY)) {
  return 0;
 }

 ret = csops(getpid(), CS_OPS_CLEARPLATFORM, ((void*)0), 0);
 if (ret) {
  switch (errno) {
  case 128:
   T_LOG("clearing platform binary not supported, skipping test");
   return -1;
  default:
   T_LOG("csops failed with flag CS_OPS_CLEARPLATFORM");
   return -1;
  }
 }

 my_csflags = 0;
 T_QUIET; T_ASSERT_POSIX_ZERO(csops(getpid(), CS_OPS_STATUS, &my_csflags, sizeof(my_csflags)), ((void*)0));

 if (my_csflags & CS_PLATFORM_BINARY) {
  T_LOG("platform binary flag still set");
  return -1;
 }

 return 0;
}
