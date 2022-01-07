
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tube ;


 int * make_and_insert_tube (char const*) ;
 int * tube_find (char const*) ;

Tube *
tube_find_or_make(const char *name)
{
    Tube *t = tube_find(name);
    if (t)
        return t;
    return make_and_insert_tube(name);
}
