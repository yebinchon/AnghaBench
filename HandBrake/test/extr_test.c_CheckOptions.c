
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int short_name; } ;
typedef TYPE_1__ hb_container_t ;


 int * atracks ;
 int audio_all ;
 int * audio_lang_list ;
 int count_subtitles (int ) ;
 scalar_t__ display_width ;
 int * format ;
 int fprintf (int ,char*,...) ;
 int hb_container_get_from_extension (char const*) ;
 TYPE_1__* hb_container_get_from_format (int ) ;
 char* input ;
 int mux ;
 char* output ;
 scalar_t__ par_height ;
 scalar_t__ par_width ;
 int * preset_export_desc ;
 int * preset_export_file ;
 int * preset_export_name ;
 int * queue_import_name ;
 int stderr ;
 int * strdup (int ) ;
 char* strrchr (char*,char) ;
 int subtitle_all ;
 int * subtitle_lang_list ;
 int subtracks ;
 scalar_t__ titleindex ;
 int titlescan ;

__attribute__((used)) static int CheckOptions( int argc, char ** argv )
{
    if (queue_import_name != ((void*)0))
    {

        return 0;
    }

    if (preset_export_name == ((void*)0) && (input == ((void*)0) || *input == '\0'))
    {
        fprintf( stderr, "Missing input device. Run %s --help for "
                 "syntax.\n", argv[0] );
        return 1;
    }


    if (titleindex > 0 && !titlescan)
    {
        if (preset_export_name == ((void*)0) && (output == ((void*)0) || *output == '\0'))
        {
            fprintf( stderr, "Missing output file name. Run %s --help "
                     "for syntax.\n", argv[0] );
            return 1;
        }

        if (format == ((void*)0) && output != ((void*)0))
        {

            const char *extension = strrchr(output, '.');
            if (extension != ((void*)0))
            {

                mux = hb_container_get_from_extension(extension + 1);
            }
            hb_container_t * c = hb_container_get_from_format(mux);
            if (c != ((void*)0))
                format = strdup(c->short_name);
        }
    }

    int subtitle_track_count = count_subtitles(subtracks);
    if (subtitle_track_count > 0 && subtitle_lang_list != ((void*)0))
    {
        fprintf(stderr,
                "Incompatible options: --subtitle-lang-list and --subtitle\n");
        return 1;
    }

    if (subtitle_track_count > 0 && subtitle_all != -1)
    {
        fprintf(stderr,
                "Incompatible options: --all-subtitles/--first-subtitle and --subtitle\n");
        return 1;
    }

    if (atracks != ((void*)0) && audio_lang_list != ((void*)0))
    {
        fprintf(stderr,
                "Incompatible options: --audio-lang-list and --audio\n");
        return 1;
    }

    if (atracks != ((void*)0) && audio_all != -1)
    {
        fprintf(stderr,
                "Incompatible options: --all-audio/--first-audio and --audio\n");
        return 1;
    }

    if ((par_width > 0 && par_height > 0) && display_width > 0)
    {
        fprintf(stderr,
                "Incompatible options: --display-width and --pixel-aspect\n");
        return 1;
    }

    if (preset_export_file != ((void*)0) && preset_export_name == ((void*)0))
    {
        fprintf(stderr,
                "Error: --preset-export-file requires option --preset-export\n");
        return 1;
    }

    if (preset_export_desc != ((void*)0) && preset_export_name == ((void*)0))
    {
        fprintf(stderr,
                "Error: --preset-export-desc requires option --preset-export\n");
        return 1;
    }

    return 0;
}
