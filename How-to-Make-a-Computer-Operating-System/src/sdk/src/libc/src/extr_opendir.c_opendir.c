
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fd; } ;
typedef TYPE_1__ DIR ;


 int O_RDONLY ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ open (char const*,int ) ;

DIR* opendir( const char* name ) {
    DIR* dir;

    dir = ( DIR* )malloc( sizeof( DIR ) );

    if ( dir == ((void*)0) ) {
        return ((void*)0);
    }

    dir->fd = open( name, O_RDONLY );

    if ( dir->fd < 0 ) {
        free( dir );
        return ((void*)0);
    }

    return dir;
}
