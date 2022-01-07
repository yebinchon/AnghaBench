
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {char* release; } ;


 int uname (struct utsname*) ;

__attribute__((used)) static int check_version_3_17_plus( void )
{
    int minor;
    struct utsname un;
    const char *ver;


    uname(&un);
    ver = un.release;


    if( ver[0] < '3' || ver[0] > '9' || ver [1] != '.' )
        return( -1 );

    if( ver[0] - '0' > 3 )
        return( 0 );



    if( ver[2] < '0' || ver[2] > '9' )
        return( -1 );

    minor = ver[2] - '0';

    if( ver[3] >= '0' && ver[3] <= '9' )
        minor = 10 * minor + ver[3] - '0';
    else if( ver [3] != '.' )
        return( -1 );

    if( minor < 17 )
        return( -1 );

    return( 0 );
}
