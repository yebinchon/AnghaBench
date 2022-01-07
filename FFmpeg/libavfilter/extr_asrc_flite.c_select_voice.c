
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct voice_entry {int usage_count; scalar_t__ voice; scalar_t__ (* register_fn ) (int *) ;int name; } ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int EINVAL ;
 int FF_ARRAY_ELEMS (struct voice_entry*) ;
 int av_log (void*,int ,char*,...) ;
 int list_voices (void*,char*) ;
 int strcmp (int ,char const*) ;
 scalar_t__ stub1 (int *) ;
 struct voice_entry* voice_entries ;

__attribute__((used)) static int select_voice(struct voice_entry **entry_ret, const char *voice_name, void *log_ctx)
{
    int i;

    for (i = 0; i < FF_ARRAY_ELEMS(voice_entries); i++) {
        struct voice_entry *entry = &voice_entries[i];
        if (!strcmp(entry->name, voice_name)) {
            if (!entry->voice)
                entry->voice = entry->register_fn(((void*)0));
            if (!entry->voice) {
                av_log(log_ctx, AV_LOG_ERROR,
                       "Could not register voice '%s'\n", voice_name);
                return AVERROR_UNKNOWN;
            }
            entry->usage_count++;
            *entry_ret = entry;
            return 0;
        }
    }

    av_log(log_ctx, AV_LOG_ERROR, "Could not find voice '%s'\n", voice_name);
    av_log(log_ctx, AV_LOG_INFO, "Choose between the voices: ");
    list_voices(log_ctx, ", ");

    return AVERROR(EINVAL);
}
