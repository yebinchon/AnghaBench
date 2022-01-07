
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_white (char) ;
 int strlen (char*) ;

__attribute__((used)) static void hb_trim_end( char *text )
{
    if( text == ((void*)0) )
    {
        return;
    }

    int i;

    for( i = strlen(text) - 1; i >= 0 && is_white(text[i]) ; i-- )
    {
        text[i] = '\0';
    }
}
