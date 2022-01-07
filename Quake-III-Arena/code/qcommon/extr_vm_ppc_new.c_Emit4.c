
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* buf ;
 size_t compiledOfs ;
 int pass ;
 int printf (char*,int*,char*,int) ;

__attribute__((used)) static void Emit4( char *opname, int i ) {




 buf[ compiledOfs ] = i;
 compiledOfs++;
}
