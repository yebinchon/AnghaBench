
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bufcon_lenp (unsigned int) ;

int bufcon_lenx( unsigned int p )
{
  return (bufcon_lenp( p ) + 2);
}
