
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_9__ {int bdplus_handled; scalar_t__ bdplus_detected; int libaacs_detected; int aacs_handled; scalar_t__ aacs_detected; int bluray_detected; } ;
struct TYPE_8__ {int bd; } ;
typedef TYPE_2__ BlurayContext ;
typedef TYPE_3__ BLURAY_DISC_INFO ;


 int AV_LOG_ERROR ;
 int av_log (TYPE_1__*,int ,char*) ;
 TYPE_3__* bd_get_disc_info (int ) ;

__attribute__((used)) static int check_disc_info(URLContext *h)
{
    BlurayContext *bd = h->priv_data;
    const BLURAY_DISC_INFO *disc_info;

    disc_info = bd_get_disc_info(bd->bd);
    if (!disc_info) {
        av_log(h, AV_LOG_ERROR, "bd_get_disc_info() failed\n");
        return -1;
    }

    if (!disc_info->bluray_detected) {
        av_log(h, AV_LOG_ERROR, "BluRay disc not detected\n");
        return -1;
    }


    if (disc_info->aacs_detected && !disc_info->aacs_handled) {
        if (!disc_info->libaacs_detected) {
            av_log(h, AV_LOG_ERROR,
                   "Media stream encrypted with AACS, install and configure libaacs\n");
        } else {
            av_log(h, AV_LOG_ERROR, "Your libaacs can't decrypt this media\n");
        }
        return -1;
    }


    if (disc_info->bdplus_detected && !disc_info->bdplus_handled) {






            av_log(h, AV_LOG_ERROR, "Unable to decrypt BD+ encrypted media\n");

        return -1;
    }

    return 0;
}
