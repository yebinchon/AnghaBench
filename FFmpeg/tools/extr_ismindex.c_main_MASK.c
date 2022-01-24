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
struct Tracks {int video_track; int audio_track; int /*<<< orphan*/  nb_tracks; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  output_prefix_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Tracks*) ; 
 scalar_t__ FUNC1 (struct Tracks*,char*,int,int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct Tracks*,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct Tracks*,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char const*) ; 
 int FUNC7 (char*,int) ; 

int FUNC8(int argc, char **argv)
{
    const char *basename = NULL;
    const char *path_prefix = "", *ismc_prefix = "";
    const char *output_prefix = "";
    char output_prefix_buf[2048];
    int split = 0, ismf = 0, i;
    struct Tracks tracks = { 0, .video_track = -1, .audio_track = -1 };

    for (i = 1; i < argc; i++) {
        if (!FUNC5(argv[i], "-n")) {
            basename = argv[i + 1];
            i++;
        } else if (!FUNC5(argv[i], "-path-prefix")) {
            path_prefix = argv[i + 1];
            i++;
        } else if (!FUNC5(argv[i], "-ismc-prefix")) {
            ismc_prefix = argv[i + 1];
            i++;
        } else if (!FUNC5(argv[i], "-output")) {
            output_prefix = argv[i + 1];
            i++;
            if (output_prefix[FUNC6(output_prefix) - 1] != '/') {
                FUNC4(output_prefix_buf, sizeof(output_prefix_buf),
                         "%s/", output_prefix);
                output_prefix = output_prefix_buf;
            }
        } else if (!FUNC5(argv[i], "-split")) {
            split = 1;
        } else if (!FUNC5(argv[i], "-ismf")) {
            ismf = 1;
        } else if (argv[i][0] == '-') {
            return FUNC7(argv[0], 1);
        } else {
            if (!basename)
                ismf = 0;
            if (FUNC1(&tracks, argv[i], split, ismf,
                            basename, output_prefix))
                return 1;
        }
    }
    if (!tracks.nb_tracks || (!basename && !split))
        return FUNC7(argv[0], 1);

    if (!split)
        FUNC3(&tracks, basename, output_prefix,
                               path_prefix, ismc_prefix);
    FUNC2(&tracks, basename, output_prefix, split);

    FUNC0(&tracks);

    return 0;
}