
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ has_ungotten; } ;
typedef TYPE_1__ FILE ;


 int __FILE_EOF ;

int feof( FILE* stream ) {
    if ( stream->has_ungotten ) {
        return 0;
    }

    return ( stream->flags & __FILE_EOF );
}
