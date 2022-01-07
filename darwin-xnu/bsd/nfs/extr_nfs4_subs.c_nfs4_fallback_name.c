
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int
nfs4_fallback_name(const char *id, int have_at)
{
 if (have_at) {


  if (!strncmp(id, "root@", 5))
   return (0);
  else if (!strncmp(id, "wheel@", 6))
   return (0);
  else if (!strncmp(id, "nobody@", 7))
   return (-2);
  else if (!strncmp(id, "nfsnobody@", 10))
   return (-2);
 }
 return (-2);
}
