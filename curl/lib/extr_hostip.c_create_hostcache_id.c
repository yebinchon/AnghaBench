
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TOLOWER (int ) ;
 int msnprintf (char*,int,char*,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
create_hostcache_id(const char *name, int port, char *ptr, size_t buflen)
{
  size_t len = strlen(name);
  if(len > (buflen - 7))
    len = buflen - 7;

  while(len--)
    *ptr++ = (char)TOLOWER(*name++);
  msnprintf(ptr, 7, ":%u", port);
}
