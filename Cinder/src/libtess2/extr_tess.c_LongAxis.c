
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TESSreal ;


 scalar_t__ ABS (int ) ;

__attribute__((used)) static int LongAxis( TESSreal v[3] )
{
 int i = 0;

 if( ABS(v[1]) > ABS(v[0]) ) { i = 1; }
 if( ABS(v[2]) > ABS(v[i]) ) { i = 2; }
 return i;
}
