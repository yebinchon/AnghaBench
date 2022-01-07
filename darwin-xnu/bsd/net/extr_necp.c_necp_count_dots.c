
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
necp_count_dots(char *string, size_t length)
{
 int dot_count = 0;
 size_t i = 0;

 for (i = 0; i < length; i++) {
  if (string[i] == '.') {
   dot_count++;
  }
 }

 return (dot_count);
}
