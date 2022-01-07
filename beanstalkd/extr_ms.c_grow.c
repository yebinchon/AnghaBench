
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cap; void** items; int len; } ;
typedef TYPE_1__ Ms ;


 int free (void**) ;
 void** malloc (size_t) ;
 int memcpy (void**,void**,int) ;

__attribute__((used)) static int
grow(Ms *a)
{
    void **nitems;
    size_t ncap = a->cap << 1;
    if (!ncap)
        ncap = 1;

    nitems = malloc(ncap * sizeof(void *));
    if (!nitems)
        return 0;

    memcpy(nitems, a->items, a->len * sizeof(void *));
    free(a->items);
    a->items = nitems;
    a->cap = ncap;
    return 1;
}
