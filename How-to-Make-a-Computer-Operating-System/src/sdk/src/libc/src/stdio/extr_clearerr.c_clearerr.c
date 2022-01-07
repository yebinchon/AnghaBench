
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ FILE ;


 int __FILE_EOF ;
 int __FILE_ERROR ;

void clearerr( FILE* stream ) {
    stream->flags &= ~( __FILE_EOF | __FILE_ERROR );
}
