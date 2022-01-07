
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tv_sec; } ;
typedef TYPE_1__ timeval_t ;
struct utimbuf {int modtime; int actime; } ;


 int utime (char const*,struct utimbuf*) ;

int utimes( const char* filename, const timeval_t times[2] ) {
    struct utimbuf tmp;


    tmp.actime = times[ 0 ].tv_sec;
    tmp.modtime = times[ 1 ].tv_sec;


    return utime( filename, &tmp );
}
