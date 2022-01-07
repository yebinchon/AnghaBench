
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fseek (int *,int,int) ;

void Sys_StreamSeek( FILE *f, int offset, int origin ) {
 fseek( f, offset, origin );
}
