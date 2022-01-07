
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; } ;
struct TYPE_5__ {int* crop; TYPE_1__ geometry; } ;
typedef TYPE_2__ hb_title_t ;
typedef int gint ;
typedef scalar_t__ gboolean ;
typedef int GhbValue ;


 int EVEN (int) ;
 int MOD_DOWN (int,int) ;
 scalar_t__ ghb_dict_get_bool (int *,char*) ;
 int ghb_dict_get_int (int *,char*) ;
 int ghb_dict_set_int (int *,char*,int) ;
 int ghb_settings_combo_int (int *,char*) ;

void
ghb_apply_crop(GhbValue *settings, const hb_title_t * title)
{
    gboolean autocrop, loosecrop;
    gint crop[4] = {0,};

    autocrop = ghb_dict_get_bool(settings, "PictureAutoCrop");


    loosecrop = ghb_dict_get_bool(settings, "PictureLooseCrop");

    if (autocrop)
    {
        crop[0] = title->crop[0];
        crop[1] = title->crop[1];
        crop[2] = title->crop[2];
        crop[3] = title->crop[3];
    }
    else
    {
        crop[0] = ghb_dict_get_int(settings, "PictureTopCrop");
        crop[1] = ghb_dict_get_int(settings, "PictureBottomCrop");
        crop[2] = ghb_dict_get_int(settings, "PictureLeftCrop");
        crop[3] = ghb_dict_get_int(settings, "PictureRightCrop");
    }
    if (loosecrop)
    {
        gint need1, need2;
        gint crop_width, crop_height, width, height;
        gint mod;

        mod = ghb_settings_combo_int(settings, "PictureModulus");
        if (mod <= 0)
            mod = 16;


        crop_width = title->geometry.width - crop[2] - crop[3];
        crop_height = title->geometry.height - crop[0] - crop[1];
        width = MOD_DOWN(crop_width, mod);
        height = MOD_DOWN(crop_height, mod);

        need1 = EVEN((crop_height - height) / 2);
        need2 = crop_height - height - need1;
        crop[0] += need1;
        crop[1] += need2;
        need1 = EVEN((crop_width - width) / 2);
        need2 = crop_width - width - need1;
        crop[2] += need1;
        crop[3] += need2;
    }

    if (title->geometry.height - crop[0] -crop[1] < 16)
    {
        crop[0] = title->geometry.height - crop[1] - 16;
        if (crop[0] < 0)
        {
            crop[1] += crop[0];
            crop[0] = 0;
        }
    }
    if (title->geometry.width - crop[2] - crop[3] < 16)
    {
        crop[2] = title->geometry.width - crop[3] - 16;
        if (crop[2] < 0)
        {
            crop[3] += crop[2];
            crop[2] = 0;
        }
    }
    ghb_dict_set_int(settings, "PictureTopCrop", crop[0]);
    ghb_dict_set_int(settings, "PictureBottomCrop", crop[1]);
    ghb_dict_set_int(settings, "PictureLeftCrop", crop[2]);
    ghb_dict_set_int(settings, "PictureRightCrop", crop[3]);
}
