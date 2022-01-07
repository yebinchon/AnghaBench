
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int kuuid_line ;


 int MAX_LEN ;
 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 int T_ASSERT_TRUE (int,char*) ;
 int memset (char*,int ,int) ;
 int sysctlbyname (char*,char*,size_t*,int *,int ) ;
 scalar_t__ uuid_parse (char*,int ) ;

__attribute__((used)) static void get_system_kernel_uuid(uuid_t kuuid) {
 char kuuid_line[MAX_LEN];
 memset(kuuid_line, 0, sizeof(kuuid_line));
 size_t len = sizeof(kuuid_line);
 int ret = sysctlbyname("kern.uuid", kuuid_line, &len, ((void*)0), 0);
 T_ASSERT_POSIX_SUCCESS(ret, "sysctl kern.uuid");

 T_ASSERT_TRUE(uuid_parse(kuuid_line, kuuid) == 0,
   "Parse running kernel uuid");
}
