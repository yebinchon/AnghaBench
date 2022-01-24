#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  place ;
typedef  int /*<<< orphan*/  key2 ;
typedef  float int32_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/  event_flags; } ;
struct TYPE_4__ {TYPE_3__* fc; } ;
typedef  TYPE_1__ MOVContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVFMT_EVENT_FLAG_METADATA_UPDATED ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,...) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static int FUNC10(MOVContext *c, AVIOContext *pb, unsigned len)
{
    char language[4] = { 0 };
    char buf[200], place[100];
    uint16_t langcode = 0;
    double longitude, latitude, altitude;
    const char *key = "location";

    if (len < 4 + 2 + 1 + 1 + 4 + 4 + 4) {
        FUNC1(c->fc, AV_LOG_ERROR, "loci too short\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC6(pb, 4); // version+flags
    langcode = FUNC4(pb);
    FUNC7(langcode, language);
    len -= 6;

    len -= FUNC3(pb, len, place, sizeof(place));
    if (len < 1) {
        FUNC1(c->fc, AV_LOG_ERROR, "place name too long\n");
        return AVERROR_INVALIDDATA;
    }
    FUNC6(pb, 1); // role
    len -= 1;

    if (len < 12) {
        FUNC1(c->fc, AV_LOG_ERROR,
               "loci too short (%u bytes left, need at least %d)\n", len, 12);
        return AVERROR_INVALIDDATA;
    }
    longitude = ((int32_t) FUNC5(pb)) / (float) (1 << 16);
    latitude  = ((int32_t) FUNC5(pb)) / (float) (1 << 16);
    altitude  = ((int32_t) FUNC5(pb)) / (float) (1 << 16);

    // Try to output in the same format as the ?xyz field
    FUNC8(buf, sizeof(buf), "%+08.4f%+09.4f",  latitude, longitude);
    if (altitude)
        FUNC2(buf, sizeof(buf), "%+f", altitude);
    FUNC2(buf, sizeof(buf), "/%s", place);

    if (*language && FUNC9(language, "und")) {
        char key2[16];
        FUNC8(key2, sizeof(key2), "%s-%s", key, language);
        FUNC0(&c->fc->metadata, key2, buf, 0);
    }
    c->fc->event_flags |= AVFMT_EVENT_FLAG_METADATA_UPDATED;
    return FUNC0(&c->fc->metadata, key, buf, 0);
}