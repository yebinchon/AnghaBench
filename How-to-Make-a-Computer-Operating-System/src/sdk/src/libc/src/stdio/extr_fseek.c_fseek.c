
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int FILE ;


 int fseeko (int *,int ,int) ;

int fseek( FILE* stream, long offset, int whence ) {
    return fseeko( stream, ( off_t )offset, whence );
}
