
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hb_preset_version_major ;
 int hb_preset_version_micro ;
 int hb_preset_version_minor ;

void hb_presets_current_version(int *major, int* minor, int *micro)
{
    *major = hb_preset_version_major;
    *minor = hb_preset_version_minor;
    *micro = hb_preset_version_micro;
}
