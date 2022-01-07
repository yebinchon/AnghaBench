
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ghb_value_free (scalar_t__*) ;
 scalar_t__ prefsDict ;

void
ghb_settings_close()
{
    if (prefsDict)
        ghb_value_free(&prefsDict);
}
