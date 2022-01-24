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
struct variant_info {int /*<<< orphan*/  subtitles; int /*<<< orphan*/  video; int /*<<< orphan*/  audio; int /*<<< orphan*/  bandwidth; } ;
struct variant {int /*<<< orphan*/  n_playlists; int /*<<< orphan*/  playlists; int /*<<< orphan*/  subtitles_group; int /*<<< orphan*/  video_group; int /*<<< orphan*/  audio_group; int /*<<< orphan*/  bandwidth; } ;
struct playlist {int /*<<< orphan*/  n_playlists; int /*<<< orphan*/  playlists; int /*<<< orphan*/  subtitles_group; int /*<<< orphan*/  video_group; int /*<<< orphan*/  audio_group; int /*<<< orphan*/  bandwidth; } ;
struct TYPE_4__ {int /*<<< orphan*/  n_variants; int /*<<< orphan*/  variants; } ;
typedef  TYPE_1__ HLSContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct variant* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct variant*) ; 
 struct variant* FUNC3 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct variant *FUNC5(HLSContext *c, struct variant_info *info,
                                   const char *url, const char *base)
{
    struct variant *var;
    struct playlist *pls;

    pls = FUNC3(c, url, base);
    if (!pls)
        return NULL;

    var = FUNC1(sizeof(struct variant));
    if (!var)
        return NULL;

    if (info) {
        var->bandwidth = FUNC0(info->bandwidth);
        FUNC4(var->audio_group, info->audio);
        FUNC4(var->video_group, info->video);
        FUNC4(var->subtitles_group, info->subtitles);
    }

    FUNC2(&c->variants, &c->n_variants, var);
    FUNC2(&var->playlists, &var->n_playlists, pls);
    return var;
}