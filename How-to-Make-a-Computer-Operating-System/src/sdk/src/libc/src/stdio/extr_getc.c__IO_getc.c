
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fgetc (int *) ;

int getc( FILE* stream ) {
    return fgetc( stream );
}
