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
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

void FUNC1(AVIOContext *out, char *agroup,
                                  const char *filename, char *language, int name_id, int is_default) {
    if (!out || !agroup || !filename)
        return;

    FUNC0(out, "#EXT-X-MEDIA:TYPE=AUDIO,GROUP-ID=\"group_%s\"", agroup);
    FUNC0(out, ",NAME=\"audio_%d\",DEFAULT=%s,", name_id, is_default ? "YES" : "NO");
    if (language) {
        FUNC0(out, "LANGUAGE=\"%s\",", language);
    }
    FUNC0(out, "URI=\"%s\"\n", filename);
}