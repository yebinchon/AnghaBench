#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_3__ {char* value; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_1__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,char*,int*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 double FUNC9 (char const*,char**) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s, AVIOContext *pb)
{
    int lang;
    int64_t pos = FUNC1(pb);
    double latitude, longitude, altitude;
    int32_t latitude_fix, longitude_fix, altitude_fix;
    AVDictionaryEntry *t = FUNC7(s, "location", &lang);
    const char *ptr, *place = "";
    char *end;
    static const char *astronomical_body = "earth";
    if (!t)
        return 0;

    ptr = t->value;
    longitude = FUNC9(ptr, &end);
    if (end == ptr) {
        FUNC0(s, AV_LOG_WARNING, "malformed location metadata\n");
        return 0;
    }
    ptr = end;
    latitude = FUNC9(ptr, &end);
    if (end == ptr) {
        FUNC0(s, AV_LOG_WARNING, "malformed location metadata\n");
        return 0;
    }
    ptr = end;
    altitude = FUNC9(ptr, &end);
    /* If no altitude was present, the default 0 should be fine */
    if (*end == '/')
        place = end + 1;

    latitude_fix  = (int32_t) ((1 << 16) * latitude);
    longitude_fix = (int32_t) ((1 << 16) * longitude);
    altitude_fix  = (int32_t) ((1 << 16) * altitude);

    FUNC4(pb, 0);         /* size */
    FUNC6(pb, "loci"); /* type */
    FUNC4(pb, 0);         /* version + flags */
    FUNC3(pb, lang);
    FUNC5(pb, place, FUNC8(place) + 1);
    FUNC2(pb, 0);           /* role of place (0 == shooting location, 1 == real location, 2 == fictional location) */
    FUNC4(pb, latitude_fix);
    FUNC4(pb, longitude_fix);
    FUNC4(pb, altitude_fix);
    FUNC5(pb, astronomical_body, FUNC8(astronomical_body) + 1);
    FUNC2(pb, 0);           /* additional notes, null terminated string */

    return FUNC10(pb, pos);
}