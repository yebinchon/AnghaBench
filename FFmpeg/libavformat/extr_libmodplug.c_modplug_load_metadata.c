
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int metadata; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int * f; } ;
typedef int ModPlugFile ;
typedef TYPE_1__ ModPlugContext ;
typedef TYPE_2__ AVFormatContext ;


 int ADD_META_MULTIPLE_ENTRIES (int ,int ) ;
 int AVERROR (int ) ;
 int AV_DICT_DONT_STRDUP_VAL ;
 int ENOMEM ;
 char* ModPlug_GetMessage (int *) ;
 char* ModPlug_GetName (int *) ;
 int ModPlug_InstrumentName ;
 unsigned int ModPlug_NumChannels (int *) ;
 unsigned int ModPlug_NumInstruments (int *) ;
 unsigned int ModPlug_NumPatterns (int *) ;
 unsigned int ModPlug_NumSamples (int *) ;
 int ModPlug_SampleName ;
 char* av_asprintf (char*,unsigned int,char*,unsigned int,char*) ;
 int av_dict_set (int *,char*,char const*,int ) ;
 int instrument ;
 int sample ;

__attribute__((used)) static int modplug_load_metadata(AVFormatContext *s)
{
    ModPlugContext *modplug = s->priv_data;
    ModPlugFile *f = modplug->f;
    char *extra;
    const char *name = ModPlug_GetName(f);
    const char *msg = ModPlug_GetMessage(f);

    unsigned n_instruments = ModPlug_NumInstruments(f);
    unsigned n_samples = ModPlug_NumSamples(f);
    unsigned n_patterns = ModPlug_NumPatterns(f);
    unsigned n_channels = ModPlug_NumChannels(f);

    if (name && *name) av_dict_set(&s->metadata, "name", name, 0);
    if (msg && *msg) av_dict_set(&s->metadata, "message", msg, 0);

    extra = av_asprintf("%u pattern%s, %u channel%s",
                        n_patterns, n_patterns > 1 ? "s" : "",
                        n_channels, n_channels > 1 ? "s" : "");
    if (!extra)
        return AVERROR(ENOMEM);
    av_dict_set(&s->metadata, "extra info", extra, AV_DICT_DONT_STRDUP_VAL);

    ADD_META_MULTIPLE_ENTRIES(instrument, ModPlug_InstrumentName);
    ADD_META_MULTIPLE_ENTRIES(sample, ModPlug_SampleName);

    return 0;
}
