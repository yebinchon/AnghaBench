
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cp_key_os_version_t ;


 char* osversion ;
 int parse_os_version (char*) ;
 int printf (char*,char*) ;

cp_key_os_version_t
cp_os_version(void)
{
 static cp_key_os_version_t cp_os_version;

 if (cp_os_version)
  return cp_os_version;

 if (!osversion[0])
  return 0;

 cp_os_version = parse_os_version(osversion);
 if (!cp_os_version) {
  printf("cp_os_version: unable to parse osversion `%s'\n", osversion);
  cp_os_version = 1;
 }

 return cp_os_version;
}
