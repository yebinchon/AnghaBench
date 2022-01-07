
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int osi_free (void*) ;

void utl_freebuf(void **p)
{
    if (*p != ((void*)0)) {
        osi_free(*p);
        *p = ((void*)0);
    }
}
