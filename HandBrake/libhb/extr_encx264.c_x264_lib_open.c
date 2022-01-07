
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HB_SO_EXT ;
 int free (char*) ;
 void* hb_dlopen (char*) ;
 char* hb_strdup_printf (char*,char const*,int ) ;

__attribute__((used)) static void * x264_lib_open(const char *names[])
{
    if (names == ((void*)0))
        return ((void*)0);

    void *h;
    int ii = 0;
    while (names[ii] != ((void*)0))
    {
        char *name = hb_strdup_printf("%s%s", names[ii], HB_SO_EXT);
        h = hb_dlopen(name);
        free(name);
        if (h != ((void*)0))
        {
            return h;
        }
        ii++;
    }
    return ((void*)0);
}
