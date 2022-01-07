
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* buf ;
 size_t compiledOfs ;

__attribute__((used)) static void Emit4( int i ) {
 buf[ compiledOfs ] = i;
 compiledOfs++;
}
