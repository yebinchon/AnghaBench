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
typedef  int /*<<< orphan*/  datadir ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char const* FFMPEG_DATADIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 char const* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,char*,char const*,char*,char const*,...) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 char* FUNC8 (char*,char) ; 

FILE *FUNC9(char *filename, size_t filename_size,
                      const char *preset_name, int is_path,
                      const char *codec_name)
{
    FILE *f = NULL;
    int i;
    const char *base[3] = { FUNC4("FFMPEG_DATADIR"),
                            FUNC4("HOME"),
                            FFMPEG_DATADIR, };

    if (is_path) {
        FUNC2(filename, preset_name, filename_size);
        f = FUNC3(filename, "r");
    } else {
#ifdef _WIN32
        char datadir[MAX_PATH], *ls;
        base[2] = NULL;

        if (GetModuleFileNameA(GetModuleHandleA(NULL), datadir, sizeof(datadir) - 1))
        {
            for (ls = datadir; ls < datadir + strlen(datadir); ls++)
                if (*ls == '\\') *ls = '/';

            if (ls = strrchr(datadir, '/'))
            {
                *ls = 0;
                strncat(datadir, "/ffpresets",  sizeof(datadir) - 1 - strlen(datadir));
                base[2] = datadir;
            }
        }
#endif
        for (i = 0; i < 3 && !f; i++) {
            if (!base[i])
                continue;
            FUNC5(filename, filename_size, "%s%s/%s.ffpreset", base[i],
                     i != 1 ? "" : "/.ffmpeg", preset_name);
            f = FUNC3(filename, "r");
            if (!f && codec_name) {
                FUNC5(filename, filename_size,
                         "%s%s/%s-%s.ffpreset",
                         base[i], i != 1 ? "" : "/.ffmpeg", codec_name,
                         preset_name);
                f = FUNC3(filename, "r");
            }
        }
    }

    return f;
}