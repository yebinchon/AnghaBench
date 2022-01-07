
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Tracks {int nb_tracks; struct Track** tracks; } ;
struct Track {int name; int track_id; int bitrate; scalar_t__ is_video; } ;
typedef int filename ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int perror (char*) ;
 int snprintf (char*,int,char*,char const*,char const*) ;

__attribute__((used)) static void output_server_manifest(struct Tracks *tracks, const char *basename,
                                   const char *output_prefix,
                                   const char *path_prefix,
                                   const char *ismc_prefix)
{
    char filename[1000];
    FILE *out;
    int i;

    snprintf(filename, sizeof(filename), "%s%s.ism", output_prefix, basename);
    out = fopen(filename, "w");
    if (!out) {
        perror(filename);
        return;
    }
    fprintf(out, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n");
    fprintf(out, "<smil xmlns=\"http://www.w3.org/2001/SMIL20/Language\">\n");
    fprintf(out, "\t<head>\n");
    fprintf(out, "\t\t<meta name=\"clientManifestRelativePath\" "
                 "content=\"%s%s.ismc\" />\n", ismc_prefix, basename);
    fprintf(out, "\t</head>\n");
    fprintf(out, "\t<body>\n");
    fprintf(out, "\t\t<switch>\n");
    for (i = 0; i < tracks->nb_tracks; i++) {
        struct Track *track = tracks->tracks[i];
        const char *type = track->is_video ? "video" : "audio";
        fprintf(out, "\t\t\t<%s src=\"%s%s\" systemBitrate=\"%d\">\n",
                type, path_prefix, track->name, track->bitrate);
        fprintf(out, "\t\t\t\t<param name=\"trackID\" value=\"%d\" "
                     "valueType=\"data\" />\n", track->track_id);
        fprintf(out, "\t\t\t</%s>\n", type);
    }
    fprintf(out, "\t\t</switch>\n");
    fprintf(out, "\t</body>\n");
    fprintf(out, "</smil>\n");
    fclose(out);
}
