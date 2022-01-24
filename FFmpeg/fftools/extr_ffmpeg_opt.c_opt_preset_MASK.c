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
typedef  int /*<<< orphan*/  tmp_line ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  OptionsContext ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char**) ; 
 int /*<<< orphan*/  codec_names ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  str ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(void *optctx, const char *opt, const char *arg)
{
    OptionsContext *o = optctx;
    FILE *f=NULL;
    char filename[1000], line[1000], tmp_line[1000];
    const char *codec_name = NULL;

    tmp_line[0] = *opt;
    tmp_line[1] = 0;
    FUNC0(codec_names, str, codec_name, NULL, tmp_line);

    if (!(f = FUNC7(filename, sizeof(filename), arg, *opt == 'f', codec_name))) {
        if(!FUNC16(arg, "libx264-lossless", FUNC15("libx264-lossless"))){
            FUNC1(NULL, AV_LOG_FATAL, "Please use -preset <speed> -qp 0\n");
        }else
            FUNC1(NULL, AV_LOG_FATAL, "File for preset '%s' not found\n", arg);
        FUNC4(1);
    }

    while (FUNC6(line, sizeof(line), f)) {
        char *key = tmp_line, *value, *endptr;

        if (FUNC14(line, "#\n\r") == 0)
            continue;
        FUNC2(tmp_line, line, sizeof(tmp_line));
        if (!FUNC3(key,   "=",    &value) ||
            !FUNC3(value, "\r\n", &endptr)) {
            FUNC1(NULL, AV_LOG_FATAL, "%s: Invalid syntax: '%s'\n", filename, line);
            FUNC4(1);
        }
        FUNC1(NULL, AV_LOG_DEBUG, "ffpreset[%s]: set '%s' = '%s'\n", filename, key, value);

        if      (!FUNC13(key, "acodec")) FUNC8   (o, key, value);
        else if (!FUNC13(key, "vcodec")) FUNC12   (o, key, value);
        else if (!FUNC13(key, "scodec")) FUNC11(o, key, value);
        else if (!FUNC13(key, "dcodec")) FUNC9    (o, key, value);
        else if (FUNC10(o, key, value) < 0) {
            FUNC1(NULL, AV_LOG_FATAL, "%s: Invalid option or argument: '%s', parsed as '%s' = '%s'\n",
                   filename, line, key, value);
            FUNC4(1);
        }
    }

    FUNC5(f);

    return 0;
}