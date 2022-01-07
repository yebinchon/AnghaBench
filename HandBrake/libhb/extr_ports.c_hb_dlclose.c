
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeLibrary (void*) ;
 int dlclose (void*) ;

int hb_dlclose(void *h)
{



    return dlclose(h);

}
