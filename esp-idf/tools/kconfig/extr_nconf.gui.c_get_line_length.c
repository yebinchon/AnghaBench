
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int get_line_length(const char *line)
{
 int res = 0;
 while (*line != '\0' && *line != '\n') {
  line++;
  res++;
 }
 return res;
}
