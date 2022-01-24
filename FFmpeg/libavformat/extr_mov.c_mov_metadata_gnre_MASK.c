#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* fc; } ;
struct TYPE_4__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/  event_flags; } ;
typedef  TYPE_2__ MOVContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVFMT_EVENT_FLAG_METADATA_UPDATED ; 
 short ID3v1_GENRE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 short FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ff_id3v1_genre_str ; 

__attribute__((used)) static int FUNC2(MOVContext *c, AVIOContext *pb,
                             unsigned len, const char *key)
{
    short genre;

    FUNC1(pb); // unknown

    genre = FUNC1(pb);
    if (genre < 1 || genre > ID3v1_GENRE_MAX)
        return 0;
    c->fc->event_flags |= AVFMT_EVENT_FLAG_METADATA_UPDATED;
    FUNC0(&c->fc->metadata, key, ff_id3v1_genre_str[genre-1], 0);

    return 0;
}