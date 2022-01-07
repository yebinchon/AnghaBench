
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Tracks {int nb_tracks; int member_0; } ;


 int clean_tracks (struct Tracks*) ;
 scalar_t__ handle_file (struct Tracks*,char*) ;
 int output_mpd (struct Tracks*,char const*) ;
 int strcmp (char*,char*) ;
 int usage (char*,int) ;

int main(int argc, char **argv)
{
    const char *out = ((void*)0);
    struct Tracks tracks = { 0 };
    int i;

    for (i = 1; i < argc; i++) {
        if (!strcmp(argv[i], "-out")) {
            out = argv[i + 1];
            i++;
        } else if (argv[i][0] == '-') {
            return usage(argv[0], 1);
        } else {
            if (handle_file(&tracks, argv[i]))
                return 1;
        }
    }
    if (!tracks.nb_tracks || !out)
        return usage(argv[0], 1);

    output_mpd(&tracks, out);

    clean_tracks(&tracks);

    return 0;
}
