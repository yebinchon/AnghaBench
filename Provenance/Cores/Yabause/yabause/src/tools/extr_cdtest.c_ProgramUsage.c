
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* COPYRIGHT_YEAR ;
 char* PROG_NAME ;
 char* VER_NAME ;
 int exit (int) ;
 int printf (char*,char*,...) ;

void ProgramUsage()
{
   printf("%s v%s - by Cyber Warrior X (c)%s\n", PROG_NAME, VER_NAME, COPYRIGHT_YEAR);
   printf("usage: %s <drive pathname as specified in cd.c>\n", PROG_NAME);
   exit (1);
}
