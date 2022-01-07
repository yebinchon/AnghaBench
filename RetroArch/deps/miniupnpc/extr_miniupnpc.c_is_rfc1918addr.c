
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COMPARE (char const*,char*) ;
 int atoi (char const*) ;

__attribute__((used)) static int is_rfc1918addr(const char * addr)
{

 if(COMPARE(addr, "192.168."))
  return 1;

 if(COMPARE(addr, "10."))
  return 1;

 if(COMPARE(addr, "172.")) {
  int i = atoi(addr + 4);
  if((16 <= i) && (i <= 31))
   return 1;
 }
 return 0;
}
