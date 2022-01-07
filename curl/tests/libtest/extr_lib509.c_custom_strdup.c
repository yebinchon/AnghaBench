
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* strdup ;


 scalar_t__ seen_malloc ;
 int seen_strdup ;

char *custom_strdup(const char *ptr)
{
  if(!seen_strdup && seen_malloc) {






    seen_strdup = 1;
  }
  return (strdup)(ptr);
}
