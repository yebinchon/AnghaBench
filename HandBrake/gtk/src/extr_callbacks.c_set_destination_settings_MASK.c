#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * globals; int /*<<< orphan*/ * prefs; int /*<<< orphan*/ * settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  const* const* const* const* const* gint ;
typedef  int /*<<< orphan*/  const* const* const* const* gchar ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  G_FILE_TEST_IS_DIR ; 
 int /*<<< orphan*/  W_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/  const* const* const* const* const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  const* const* const***** FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int /*<<< orphan*/  const* const* const***** FUNC8 (char*,int /*<<< orphan*/  const* const* const*****,int /*<<< orphan*/  const* const* const* const* const*) ; 
 int /*<<< orphan*/  const* const* const***** FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*) ; 
 double FUNC11 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  const* const* const***** FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  const* const* const***** FUNC18 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 char* FUNC20 (int /*<<< orphan*/  const* const* const* const* const*) ; 
 struct tm* FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/  const* const* const* const* const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const* const* const* const* const*) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/  const* const* const* const* const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC27(signal_user_data_t *ud, GhbValue *settings)
{
    const gchar *extension, *dest_file, *dest_dir;
    gchar *filename;

    extension = FUNC9(ud, settings);

    FUNC1("set_destination_settings");
    dest_file = FUNC13(ud->settings, "dest_file");
    if (dest_file == NULL)
    {
        // Initialize destination filename if it has no value yet.
        // If auto-naming is disabled, this will be the default filename.
        GString *str = FUNC7("");
        const gchar *vol_name;
        vol_name = FUNC13(settings, "volume");
        FUNC5(str, "%s", vol_name);
        FUNC5(str, ".%s", extension);
        filename = FUNC6(str, FALSE);
        FUNC16(settings, "dest_file", filename);
        FUNC3(filename);
    }
    FUNC15(settings, "dest_dir", FUNC19(
                 FUNC14(ud->prefs, "destination_dir")));
    if (FUNC10(ud->prefs, "auto_name"))
    {
        GString *str = FUNC7("");
        const gchar *p;

        p = FUNC13(ud->prefs, "auto_name_template");
        // {source-path} is only allowed as the first element of the
        // template since the path must come first in the filename
        if (p != NULL &&
            (!FUNC25(p, "{source-path}", FUNC24("{source-path}")) ||
             !FUNC25(p, "{source_path}", FUNC24("{source_path}"))))
        {
            const gchar * source;

            source = FUNC13(ud->globals, "scan_source");
            if (source != NULL)
            {
                char * dirname = FUNC4(source);
                // if dirname is a directory and it is writable...
                if (dirname != NULL &&
                    FUNC2(dirname, G_FILE_TEST_IS_DIR) &&
                    FUNC0(dirname, W_OK) == 0)
                {
                    FUNC16(settings, "dest_dir", dirname);
                }
                FUNC3(dirname);
            }
            p += FUNC24("{source-path}");
        }
        while (*p)
        {
            if (!FUNC25(p, "{source}", FUNC24("{source}")))
            {
                const gchar *vol_name;
                vol_name = FUNC13(settings, "volume");
                FUNC5(str, "%s", vol_name);
                p += FUNC24("{source}");
            }
            else if (!FUNC25(p, "{title}", FUNC24("{title}")))
            {
                gint title = FUNC12(settings, "title");
                if (title >= 0)
                    FUNC5(str, "%d", title);
                p += FUNC24("{title}");
            }
            else if (!FUNC25(p, "{preset}", FUNC24("{preset}")))
            {
                const gchar *preset_name;
                preset_name = FUNC13(settings, "PresetName");
                FUNC5(str, "%s", preset_name);
                p += FUNC24("{preset}");
            }
            else if (!FUNC25(p, "{chapters}", FUNC24("{chapters}")))
            {
                if (FUNC17(settings, "PtoPType") == 0)
                {
                    gint start, end;
                    start = FUNC12(settings, "start_point");
                    end = FUNC12(settings, "end_point");
                    if (start == end)
                        FUNC5(str, "%d", start);
                    else
                        FUNC5(str, "%d-%d", start, end);
                }
                p += FUNC24("{chapters}");
            }
            else if (!FUNC25(p, "{time}", FUNC24("{time}")))
            {
                char st[6];
                struct tm *lt;
                time_t t = FUNC26(NULL);
                lt = FUNC21(&t);
                st[0] = 0;
                FUNC23(st, 6, "%H:%M", lt);
                FUNC5(str, "%s", st);
                p += FUNC24("{time}");
            }
            else if (!FUNC25(p, "{date}", FUNC24("{date}")))
            {
                char dt[11];
                struct tm *lt;
                time_t t = FUNC26(NULL);
                lt = FUNC21(&t);
                dt[0] = 0;
                FUNC23(dt, 11, "%Y-%m-%d", lt);
                FUNC5(str, "%s", dt);
                p += FUNC24("{date}");
            }
            else if (!FUNC25(p, "{creation-date}", FUNC24("{creation-date}")))
            {
                gchar *val;
                const gchar *source = FUNC13(ud->globals, "scan_source");
                val = FUNC8("%Y-%m-%d", FUNC13(settings, "MetaReleaseDate"), source);
                FUNC5(str, "%s", val);
                p += FUNC24("{creation-date}");
                FUNC3(val);
            }
            else if (!FUNC25(p, "{creation-time}", FUNC24("{creation-time}")))
            {
                gchar *val;
                const gchar *source = FUNC13(ud->globals, "scan_source");
                val = FUNC8("%H:%M", FUNC13(settings, "MetaReleaseDate"), source);
                FUNC5(str, "%s", val);
                p += FUNC24("{creation-time}");
                FUNC3(val);
            }
            else if (!FUNC25(p, "{quality}", FUNC24("{quality}")))
            {
                if (FUNC10(settings, "vquality_type_constant"))
                {
                    gint vcodec;
                    const char *vqname;
                    double vquality;
                    vcodec = FUNC18(settings, "VideoEncoder");
                    vqname = FUNC20(vcodec);
                    vquality = FUNC11(settings, "VideoQualitySlider");
                    FUNC5(str, "%s%.3g", vqname, vquality);
                }
                p += FUNC24("{quality}");
            }
            else if (!FUNC25(p, "{bitrate}", FUNC24("{bitrate}")))
            {
                if (FUNC10(settings, "vquality_type_bitrate"))
                {
                    int vbitrate;
                    vbitrate = FUNC12(settings, "VideoAvgBitrate");
                    FUNC5(str, "%dkbps", vbitrate);
                }
                p += FUNC24("{bitrate}");
            }
            else
            {
                FUNC5(str, "%c", *p);
                p++;
            }
        }
        dest_dir = FUNC13(settings, "dest_dir");
        FUNC22(dest_dir, str, extension);
        FUNC5(str, ".%s", extension);
        filename = FUNC6(str, FALSE);
        FUNC16(settings, "dest_file", filename);
        FUNC3(filename);
    }
}