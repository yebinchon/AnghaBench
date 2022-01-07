
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t counter ;
 int cs_close (void*) ;
 scalar_t__ e_flag ;
 int free (void*) ;
 int * function ;
 int * list_lines ;
 size_t size_lines ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static int teardown_issue(void **state)
{
 if (e_flag == 0)
  while (counter < size_lines && strncmp(list_lines[counter], "!# ", 3))
   counter++;
 else
  while (counter < size_lines && strncmp(list_lines[counter], "// !# ", 6))
   counter++;

 cs_close(*state);
 free(*state);
 function = ((void*)0);
 return 0;
}
