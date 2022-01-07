
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int datadir ;
typedef int FILE ;


 char const* FFMPEG_DATADIR ;
 scalar_t__ GetModuleFileNameA (int ,char*,int) ;
 int GetModuleHandleA (int *) ;
 int MAX_PATH ;
 int av_strlcpy (char*,char const*,size_t) ;
 int * fopen (char*,char*) ;
 char const* getenv (char*) ;
 int snprintf (char*,size_t,char*,char const*,char*,char const*,...) ;
 int strlen (char*) ;
 int strncat (char*,char*,int) ;
 char* strrchr (char*,char) ;

FILE *get_preset_file(char *filename, size_t filename_size,
                      const char *preset_name, int is_path,
                      const char *codec_name)
{
    FILE *f = ((void*)0);
    int i;
    const char *base[3] = { getenv("FFMPEG_DATADIR"),
                            getenv("HOME"),
                            FFMPEG_DATADIR, };

    if (is_path) {
        av_strlcpy(filename, preset_name, filename_size);
        f = fopen(filename, "r");
    } else {
        for (i = 0; i < 3 && !f; i++) {
            if (!base[i])
                continue;
            snprintf(filename, filename_size, "%s%s/%s.ffpreset", base[i],
                     i != 1 ? "" : "/.ffmpeg", preset_name);
            f = fopen(filename, "r");
            if (!f && codec_name) {
                snprintf(filename, filename_size,
                         "%s%s/%s-%s.ffpreset",
                         base[i], i != 1 ? "" : "/.ffmpeg", codec_name,
                         preset_name);
                f = fopen(filename, "r");
            }
        }
    }

    return f;
}
