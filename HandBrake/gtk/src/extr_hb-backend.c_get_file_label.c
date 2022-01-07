
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gchar ;


 scalar_t__* g_path_get_basename (scalar_t__ const*) ;
 int strlen (scalar_t__*) ;
 scalar_t__* strrchr (scalar_t__*,char) ;

__attribute__((used)) static gchar*
get_file_label(const gchar *filename)
{
    gchar *base, *pos, *end;

    base = g_path_get_basename(filename);
    pos = strrchr(base, '.');
    if (pos != ((void*)0))
    {


        end = &base[strlen(base) - 1];
        if (end - pos <= 4)
            *pos = 0;
    }
    return base;
}
