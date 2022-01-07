
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int qprintf (char*,...) ;

ArrayUsage( char *szItem, int items, int maxitems, int itemsize )
{
 float percentage = maxitems ? items * 100.0 / maxitems : 0.0;

   qprintf("%-12s  %7i/%-7i  %7i/%-7i  (%4.1f%%)",
    szItem, items, maxitems, items * itemsize, maxitems * itemsize, percentage );
 if ( percentage > 80.0 )
  qprintf( "VERY FULL!\n" );
 else if ( percentage > 95.0 )
  qprintf( "SIZE DANGER!\n" );
 else if ( percentage > 99.9 )
  qprintf( "SIZE OVERFLOW!!!\n" );
 else
  qprintf( "\n" );
 return items * itemsize;
}
