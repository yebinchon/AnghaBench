
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcat (char*,char*) ;

int sprintf_buffer(char *s, int i)
{
 int j;
 if ( i <= 0 ) return 0;
 for ( j = 0; j < i; j++) strcat(s," ");
 return 0;
}
