
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int acodec_copy_mask; int acodec_fallback; } ;
typedef TYPE_1__ hb_job_t ;
struct TYPE_7__ {int codec; char* name; } ;
typedef TYPE_2__ hb_encoder_t ;


 int HB_ACODEC_AUTO_PASS ;
 int HB_ACODEC_PASS_FLAG ;
 int HB_ACODEC_PASS_MASK ;
 int free (char*) ;
 TYPE_2__* hb_audio_encoder_get_next (TYPE_2__ const*) ;
 int hb_log (char*,...) ;
 char* hb_strncat_dup (char*,char*,int) ;
 int strlen (char*) ;

void hb_autopassthru_print_settings(hb_job_t *job)
{
    char *mask = ((void*)0), *tmp;
    const char *fallback = ((void*)0);
    const hb_encoder_t *audio_encoder = ((void*)0);
    while ((audio_encoder = hb_audio_encoder_get_next(audio_encoder)) != ((void*)0))
    {
        if ((audio_encoder->codec & HB_ACODEC_PASS_FLAG) &&
            (audio_encoder->codec != HB_ACODEC_AUTO_PASS) &&
            (audio_encoder->codec & (job->acodec_copy_mask &
                                     HB_ACODEC_PASS_MASK)))
        {
            if (mask != ((void*)0))
            {
                tmp = hb_strncat_dup(mask, ", ", 2);
                if (tmp != ((void*)0))
                {
                    free(mask);
                    mask = tmp;
                }
            }

            tmp = hb_strncat_dup(mask, audio_encoder->name,
                                 strlen(audio_encoder->name) - 9);
            if (tmp != ((void*)0))
            {
                free(mask);
                mask = tmp;
            }
        }
        else if ((audio_encoder->codec & HB_ACODEC_PASS_FLAG) == 0 &&
                 (audio_encoder->codec == job->acodec_fallback))
        {
            fallback = audio_encoder->name;
        }
    }
    if (mask == ((void*)0))
        hb_log("Auto Passthru: no codecs allowed");
    else
        hb_log("Auto Passthru: allowed codecs are %s", mask);
    if (fallback == ((void*)0))
        hb_log("Auto Passthru: no valid fallback specified");
    else
        hb_log("Auto Passthru: fallback is %s", fallback);
}
