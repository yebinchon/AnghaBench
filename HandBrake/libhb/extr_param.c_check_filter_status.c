
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;



 int hb_dict_get_int (int *,char*) ;
 int hb_dict_set (int *,char*,int ) ;
 int hb_value_bool (int) ;

__attribute__((used)) static void check_filter_status(int filter_id, hb_value_t *settings)
{
    int disable = 0;

    if (settings == ((void*)0))
    {
        return;
    }
    switch (filter_id)
    {
        case 128:
        {
            int angle = hb_dict_get_int(settings, "angle");
            int hflip = hb_dict_get_int(settings, "hflip");
            disable = angle == 0 && hflip == 0;
        } break;
        default:
        {
        } break;
    }
    if (disable)
    {
        hb_dict_set(settings, "disable", hb_value_bool(disable));
    }
}
