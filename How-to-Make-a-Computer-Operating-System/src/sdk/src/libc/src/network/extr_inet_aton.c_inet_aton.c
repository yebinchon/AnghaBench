
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;


 int htonl (unsigned int) ;
 long strtoul (char*,char**,int ) ;

int inet_aton( const char* cp, struct in_addr* inp ) {
    int i;
    unsigned int ip = 0;
    char* tmp= ( char* )cp;

    for ( i = 24; ; ) {
        long j;

        j = strtoul( tmp, &tmp, 0 );

        if ( *tmp == 0 ) {
            ip |= j;

            break;
        } else if ( *tmp == '.' ) {
            if ( j > 255 ) {
                return 0;
            }

            ip |= ( j << i );

            if ( i > 0 ) {
                i -= 8;
            }

            ++tmp;

            continue;
        }

        return 0;
    }

    inp->s_addr = htonl( ip );

    return 1;
}
