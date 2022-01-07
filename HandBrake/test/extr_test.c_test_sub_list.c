
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strtol (char*,int *,int ) ;

__attribute__((used)) static int test_sub_list( char ** list, int pos )
{
    int i;

    if ( list == ((void*)0) || pos == 0 )
        return 0;

    if ( list[0] == ((void*)0) && pos == 1 )
        return 1;

    for ( i = 0; list[i] != ((void*)0); i++ )
    {
        int idx = strtol( list[i], ((void*)0), 0 );
        if ( idx == pos )
            return 1;
    }
    return 0;
}
