
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

char* strpbrk( const char* s, const char* accept ) {
    register int i, l = strlen( accept );

    for ( ; *s != 0; s++ )
        for ( i = 0; i < l; i++ )
            if (*s == accept[i])
                return (char*)s;

    return 0;
}
