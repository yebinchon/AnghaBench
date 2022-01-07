
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pullup_field {struct pullup_field* next; } ;



__attribute__((used)) static int pullup_queue_length( struct pullup_field * begin,
                                struct pullup_field * end )
{
    int count = 1;
    struct pullup_field * f;

    if( !begin || !end ) return 0;
    for( f = begin; f != end; f = f->next ) count++;
    return count;
}
