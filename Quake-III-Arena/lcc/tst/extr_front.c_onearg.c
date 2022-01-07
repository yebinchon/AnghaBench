
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f (int) ;

onearg(){
 int a,b,c,d;
 f( ( (a? (b = 1): (c = 2)), (d ? 3 : 4) ) );
}
