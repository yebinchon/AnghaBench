
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputc (int,int ) ;
 int stdout ;

int putchar( int c ) {
    return fputc( c, stdout );
}
