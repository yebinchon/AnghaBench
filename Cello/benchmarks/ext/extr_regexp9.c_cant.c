
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rcerror (char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void
cant(char *s)
{
 char buf[100];
 strcpy(buf, "can't happen: ");
 strcat(buf, s);
 rcerror(buf);
}
