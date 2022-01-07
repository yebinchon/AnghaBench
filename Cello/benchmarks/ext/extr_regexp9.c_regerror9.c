
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exits (char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int write (int,char*,int ) ;

void
regerror9(char *s)
{
 char buf[132];

 strcpy(buf, "regerror: ");
 strcat(buf, s);
 strcat(buf, "\n");
 write(2, buf, strlen(buf));
 exits("regerr");
}
