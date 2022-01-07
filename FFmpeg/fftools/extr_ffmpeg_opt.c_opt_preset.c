
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp_line ;
typedef int line ;
typedef int filename ;
typedef int OptionsContext ;
typedef int FILE ;


 int AV_LOG_DEBUG ;
 int AV_LOG_FATAL ;
 int MATCH_PER_TYPE_OPT (int ,int ,char const*,int *,char*) ;
 int av_log (int *,int ,char*,...) ;
 int av_strlcpy (char*,char*,int) ;
 int av_strtok (char*,char*,char**) ;
 int codec_names ;
 int exit_program (int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * get_preset_file (char*,int,char const*,int,char const*) ;
 int opt_audio_codec (int *,char*,char*) ;
 int opt_data_codec (int *,char*,char*) ;
 scalar_t__ opt_default_new (int *,char*,char*) ;
 int opt_subtitle_codec (int *,char*,char*) ;
 int opt_video_codec (int *,char*,char*) ;
 int str ;
 int strcmp (char*,char*) ;
 scalar_t__ strcspn (char*,char*) ;
 int strlen (char*) ;
 int strncmp (char const*,char*,int ) ;

__attribute__((used)) static int opt_preset(void *optctx, const char *opt, const char *arg)
{
    OptionsContext *o = optctx;
    FILE *f=((void*)0);
    char filename[1000], line[1000], tmp_line[1000];
    const char *codec_name = ((void*)0);

    tmp_line[0] = *opt;
    tmp_line[1] = 0;
    MATCH_PER_TYPE_OPT(codec_names, str, codec_name, ((void*)0), tmp_line);

    if (!(f = get_preset_file(filename, sizeof(filename), arg, *opt == 'f', codec_name))) {
        if(!strncmp(arg, "libx264-lossless", strlen("libx264-lossless"))){
            av_log(((void*)0), AV_LOG_FATAL, "Please use -preset <speed> -qp 0\n");
        }else
            av_log(((void*)0), AV_LOG_FATAL, "File for preset '%s' not found\n", arg);
        exit_program(1);
    }

    while (fgets(line, sizeof(line), f)) {
        char *key = tmp_line, *value, *endptr;

        if (strcspn(line, "#\n\r") == 0)
            continue;
        av_strlcpy(tmp_line, line, sizeof(tmp_line));
        if (!av_strtok(key, "=", &value) ||
            !av_strtok(value, "\r\n", &endptr)) {
            av_log(((void*)0), AV_LOG_FATAL, "%s: Invalid syntax: '%s'\n", filename, line);
            exit_program(1);
        }
        av_log(((void*)0), AV_LOG_DEBUG, "ffpreset[%s]: set '%s' = '%s'\n", filename, key, value);

        if (!strcmp(key, "acodec")) opt_audio_codec (o, key, value);
        else if (!strcmp(key, "vcodec")) opt_video_codec (o, key, value);
        else if (!strcmp(key, "scodec")) opt_subtitle_codec(o, key, value);
        else if (!strcmp(key, "dcodec")) opt_data_codec (o, key, value);
        else if (opt_default_new(o, key, value) < 0) {
            av_log(((void*)0), AV_LOG_FATAL, "%s: Invalid option or argument: '%s', parsed as '%s' = '%s'\n",
                   filename, line, key, value);
            exit_program(1);
        }
    }

    fclose(f);

    return 0;
}
