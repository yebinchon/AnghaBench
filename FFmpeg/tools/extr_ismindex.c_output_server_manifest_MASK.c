#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct Tracks {int nb_tracks; struct Track** tracks; } ;
struct Track {int name; int track_id; int /*<<< orphan*/  bitrate; scalar_t__ is_video; } ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,char const*) ; 

__attribute__((used)) static void FUNC5(struct Tracks *tracks, const char *basename,
                                   const char *output_prefix,
                                   const char *path_prefix,
                                   const char *ismc_prefix)
{
    char filename[1000];
    FILE *out;
    int i;

    FUNC4(filename, sizeof(filename), "%s%s.ism", output_prefix, basename);
    out = FUNC1(filename, "w");
    if (!out) {
        FUNC3(filename);
        return;
    }
    FUNC2(out, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n");
    FUNC2(out, "<smil xmlns=\"http://www.w3.org/2001/SMIL20/Language\">\n");
    FUNC2(out, "\t<head>\n");
    FUNC2(out, "\t\t<meta name=\"clientManifestRelativePath\" "
                 "content=\"%s%s.ismc\" />\n", ismc_prefix, basename);
    FUNC2(out, "\t</head>\n");
    FUNC2(out, "\t<body>\n");
    FUNC2(out, "\t\t<switch>\n");
    for (i = 0; i < tracks->nb_tracks; i++) {
        struct Track *track = tracks->tracks[i];
        const char *type    = track->is_video ? "video" : "audio";
        FUNC2(out, "\t\t\t<%s src=\"%s%s\" systemBitrate=\"%d\">\n",
                type, path_prefix, track->name, track->bitrate);
        FUNC2(out, "\t\t\t\t<param name=\"trackID\" value=\"%d\" "
                     "valueType=\"data\" />\n", track->track_id);
        FUNC2(out, "\t\t\t</%s>\n", type);
    }
    FUNC2(out, "\t\t</switch>\n");
    FUNC2(out, "\t</body>\n");
    FUNC2(out, "</smil>\n");
    FUNC0(out);
}