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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,...) ; 

__attribute__((used)) static void FUNC1(char *playlist_name, int string_size,
                                  const char *base_url, int id) {
    if (base_url)
        FUNC0(playlist_name, string_size, "%smedia_%d.m3u8", base_url, id);
    else
        FUNC0(playlist_name, string_size, "media_%d.m3u8", id);
}