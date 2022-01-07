
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int,...) ;

void print_strs(char **list_str, int size)
{
 int i;

 printf("[+] Debug %d strings:\n", size);
 for (i = 0; i < size; ++i)
  printf("String %d'th: %s\n", i+1, list_str[i]);
}
