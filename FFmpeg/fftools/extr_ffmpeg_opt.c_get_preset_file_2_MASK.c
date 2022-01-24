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
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 char const* AVCONV_DATADIR ; 
 int /*<<< orphan*/  AVIO_FLAG_READ ; 
 int FUNC0 (char const**) ; 
 int FUNC1 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char const* FUNC2 (char*) ; 
 int /*<<< orphan*/  int_cb ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,char*,char const*,...) ; 

__attribute__((used)) static int FUNC4(const char *preset_name, const char *codec_name, AVIOContext **s)
{
    int i, ret = -1;
    char filename[1000];
    const char *base[3] = { FUNC2("AVCONV_DATADIR"),
                            FUNC2("HOME"),
                            AVCONV_DATADIR,
                            };

    for (i = 0; i < FUNC0(base) && ret < 0; i++) {
        if (!base[i])
            continue;
        if (codec_name) {
            FUNC3(filename, sizeof(filename), "%s%s/%s-%s.avpreset", base[i],
                     i != 1 ? "" : "/.avconv", codec_name, preset_name);
            ret = FUNC1(s, filename, AVIO_FLAG_READ, &int_cb, NULL);
        }
        if (ret < 0) {
            FUNC3(filename, sizeof(filename), "%s%s/%s.avpreset", base[i],
                     i != 1 ? "" : "/.avconv", preset_name);
            ret = FUNC1(s, filename, AVIO_FLAG_READ, &int_cb, NULL);
        }
    }
    return ret;
}