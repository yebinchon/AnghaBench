
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int daysdiff (int,int,int) ;

int dayofweek( int year, int month, int day ) {

    return ( 4 + daysdiff( year, month, day ) ) % 7;
}
