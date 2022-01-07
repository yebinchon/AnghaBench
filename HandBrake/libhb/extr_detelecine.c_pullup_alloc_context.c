
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pullup_context {int dummy; } ;


 struct pullup_context* calloc (int,int) ;

struct pullup_context * pullup_alloc_context( void )
{
    struct pullup_context * c;

    c = calloc( 1, sizeof(struct pullup_context)) ;

    return c;
}
