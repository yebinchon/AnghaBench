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
struct variant_info {char* bandwidth; char* audio; char* video; char* subtitles; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 

__attribute__((used)) static void FUNC1(struct variant_info *info, const char *key,
                                int key_len, char **dest, int *dest_len)
{
    if (!FUNC0(key, "BANDWIDTH=", key_len)) {
        *dest     =        info->bandwidth;
        *dest_len = sizeof(info->bandwidth);
    } else if (!FUNC0(key, "AUDIO=", key_len)) {
        *dest     =        info->audio;
        *dest_len = sizeof(info->audio);
    } else if (!FUNC0(key, "VIDEO=", key_len)) {
        *dest     =        info->video;
        *dest_len = sizeof(info->video);
    } else if (!FUNC0(key, "SUBTITLES=", key_len)) {
        *dest     =        info->subtitles;
        *dest_len = sizeof(info->subtitles);
    }
}