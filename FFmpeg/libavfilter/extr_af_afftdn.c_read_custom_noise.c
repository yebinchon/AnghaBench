
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int band_noise ;
struct TYPE_6__ {int band_noise_str; TYPE_1__* dnch; } ;
struct TYPE_5__ {int band_noise; } ;
typedef TYPE_1__ DeNoiseChannel ;
typedef TYPE_2__ AudioFFTDeNoiseContext ;


 int AV_LOG_ERROR ;
 int av_clip (int,int,int) ;
 int av_free (char*) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int av_sscanf (char*,char*,int*) ;
 char* av_strdup (int ) ;
 char* av_strtok (char*,char*,char**) ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static void read_custom_noise(AudioFFTDeNoiseContext *s, int ch)
{
    DeNoiseChannel *dnch = &s->dnch[ch];
    char *p, *arg, *saveptr = ((void*)0);
    int i, ret, band_noise[15] = { 0 };

    if (!s->band_noise_str)
        return;

    p = av_strdup(s->band_noise_str);
    if (!p)
        return;

    for (i = 0; i < 15; i++) {
        if (!(arg = av_strtok(p, "| ", &saveptr)))
            break;

        p = ((void*)0);

        ret = av_sscanf(arg, "%d", &band_noise[i]);
        if (ret != 1) {
            av_log(s, AV_LOG_ERROR, "Custom band noise must be integer.\n");
            break;
        }

        band_noise[i] = av_clip(band_noise[i], -24, 24);
    }

    av_free(p);
    memcpy(dnch->band_noise, band_noise, sizeof(band_noise));
}
