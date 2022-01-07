
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int get_line_no(const char *text)
{
 int i;
 int total = 1;

 if (!text)
  return 0;

 for (i = 0; text[i] != '\0'; i++)
  if (text[i] == '\n')
   total++;
 return total;
}
