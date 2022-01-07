
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALC_CAPTURE_DEVICE_SPECIFIER ;
 int AV_LOG_INFO ;
 char* alcGetString (int *,int ) ;
 int av_log (void*,int ,char*,...) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static inline void print_al_capture_devices(void *log_ctx)
{
    const char *devices;

    if (!(devices = alcGetString(((void*)0), ALC_CAPTURE_DEVICE_SPECIFIER)))
        return;

    av_log(log_ctx, AV_LOG_INFO, "List of OpenAL capture devices on this system:\n");

    for (; *devices != '\0'; devices += strlen(devices) + 1)
        av_log(log_ctx, AV_LOG_INFO, "  %s\n", devices);
}
