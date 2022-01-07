
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostname {char* name; } ;


 size_t strlen (char*) ;

__attribute__((used)) static void strip_trailing_dot(struct hostname *host)
{
  size_t len;
  if(!host || !host->name)
    return;
  len = strlen(host->name);
  if(len && (host->name[len-1] == '.'))
    host->name[len-1] = 0;
}
