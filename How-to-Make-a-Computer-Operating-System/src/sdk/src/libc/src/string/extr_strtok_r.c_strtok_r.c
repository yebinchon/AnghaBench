
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcspn (char*,char const*) ;
 int strspn (char*,char const*) ;

char* strtok_r( char* s, const char* delim, char** ptrptr ) {
    char* tmp = ((void*)0);

    if ( s == ((void*)0) ) {
        s = *ptrptr;
    }

    s += strspn( s, delim );

    if ( *s ) {
        tmp = s;
        s += strcspn( s, delim );

        if ( *s ) {
            *s++ = 0;
        }
    }

    *ptrptr = s;

    return tmp;
}
