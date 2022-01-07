
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gpointer ;


 int g_free (int *) ;

__attribute__((used)) static void
free_volname_value(gpointer data)
{
    if (data != ((void*)0))
        g_free(data);
}
