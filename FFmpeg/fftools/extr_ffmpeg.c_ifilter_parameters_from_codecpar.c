
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sample_aspect_ratio; int height; int width; int channel_layout; int channels; int sample_rate; int format; } ;
struct TYPE_5__ {int sample_aspect_ratio; int height; int width; int channel_layout; int channels; int sample_rate; int format; } ;
typedef TYPE_1__ InputFilter ;
typedef TYPE_2__ AVCodecParameters ;



__attribute__((used)) static void ifilter_parameters_from_codecpar(InputFilter *ifilter, AVCodecParameters *par)
{


    ifilter->format = par->format;
    ifilter->sample_rate = par->sample_rate;
    ifilter->channels = par->channels;
    ifilter->channel_layout = par->channel_layout;
    ifilter->width = par->width;
    ifilter->height = par->height;
    ifilter->sample_aspect_ratio = par->sample_aspect_ratio;
}
