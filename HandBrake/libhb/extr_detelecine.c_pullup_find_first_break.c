
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pullup_field {int breaks; struct pullup_field* next; } ;


 int PULLUP_BREAK_LEFT ;
 int PULLUP_BREAK_RIGHT ;

__attribute__((used)) static int pullup_find_first_break( struct pullup_field * f, int max )
{
    int i;
    for( i = 0; i < max; i++ )
    {
        if( f->breaks & PULLUP_BREAK_RIGHT ||
            f->next->breaks & PULLUP_BREAK_LEFT )
        {
            return i+1;
        }
        f = f->next;
    }
    return 0;
}
