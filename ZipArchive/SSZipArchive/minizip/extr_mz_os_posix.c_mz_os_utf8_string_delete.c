
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MZ_FREE (int *) ;

void mz_os_utf8_string_delete(uint8_t **string)
{
    if (string != ((void*)0))
    {
        MZ_FREE(*string);
        *string = ((void*)0);
    }
}
