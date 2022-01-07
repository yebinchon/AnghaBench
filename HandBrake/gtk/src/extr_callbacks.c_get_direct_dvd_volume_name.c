
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;


 int * ghb_dvd_volname (int const*) ;

__attribute__((used)) static gchar*
get_direct_dvd_volume_name(const gchar *drive)
{
    gchar *result;

    result = ghb_dvd_volname (drive);
    return result;
}
