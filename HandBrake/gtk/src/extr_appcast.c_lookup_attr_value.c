
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t gint ;
typedef int gchar ;


 scalar_t__ strcmp (int const*,int const*) ;

__attribute__((used)) static const gchar*
lookup_attr_value(
    const gchar *name,
    const gchar **attr_names,
    const gchar **attr_values)
{
    gint ii;

    if (attr_names == ((void*)0)) return ((void*)0);
    for (ii = 0; attr_names[ii] != ((void*)0); ii++)
    {
        if (strcmp(name, attr_names[ii]) == 0)
            return attr_values[ii];
    }
    return ((void*)0);
}
