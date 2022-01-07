
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GdkAtom ;


 int gdk_atom_intern_static_string (char const*) ;

__attribute__((used)) static inline GdkAtom ghb_atom_string(const char * str)
{
    return gdk_atom_intern_static_string(str);
}
