
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int bufcon_lens( char *s )
{
   int i = 0;
   while ( s[i] != 0 ) i++;
   return i;
}
