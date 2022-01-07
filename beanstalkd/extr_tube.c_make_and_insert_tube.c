
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tube ;


 int * make_tube (char const*) ;
 int ms_append (int *,int *) ;
 int * tube_dref (int *) ;
 int tubes ;

__attribute__((used)) static Tube *
make_and_insert_tube(const char *name)
{
    int r;
    Tube *t = ((void*)0);

    t = make_tube(name);
    if (!t)
        return ((void*)0);



    r = ms_append(&tubes, t);
    if (!r)
        return tube_dref(t), (Tube *) 0;

    return t;
}
