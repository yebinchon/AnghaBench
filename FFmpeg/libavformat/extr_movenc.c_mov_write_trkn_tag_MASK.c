#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* value; } ;
struct TYPE_5__ {int /*<<< orphan*/  metadata; } ;
typedef  int /*<<< orphan*/  MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ AVDictionaryEntry ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static int FUNC6(AVIOContext *pb, MOVMuxContext *mov,
                              AVFormatContext *s, int disc)
{
    AVDictionaryEntry *t = FUNC1(s->metadata,
                                       disc ? "disc" : "track",
                                       NULL, 0);
    int size = 0, track = t ? FUNC0(t->value) : 0;
    if (track) {
        int tracks = 0;
        char *slash = FUNC5(t->value, '/');
        if (slash)
            tracks = FUNC0(slash + 1);
        FUNC3(pb, 32); /* size */
        FUNC4(pb, disc ? "disk" : "trkn");
        FUNC3(pb, 24); /* size */
        FUNC4(pb, "data");
        FUNC3(pb, 0);        // 8 bytes empty
        FUNC3(pb, 0);
        FUNC2(pb, 0);        // empty
        FUNC2(pb, track);    // track / disc number
        FUNC2(pb, tracks);   // total track / disc number
        FUNC2(pb, 0);        // empty
        size = 32;
    }
    return size;
}