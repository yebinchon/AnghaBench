
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IOPMAssertionID ;


 int free (int *) ;
 int hb_system_sleep_private_enable (void*) ;

void hb_system_sleep_opaque_close(void **opaque)
{
    if (*opaque != ((void*)0))
    {
        hb_system_sleep_private_enable(*opaque);
    }







    *opaque = ((void*)0);
}
