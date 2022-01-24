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
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

__attribute__((used)) static hb_dict_t * FUNC4(hb_dict_t *track_dict, int track)
{
    // Kind of hacky, but keys must be strings
    char key[8];
    FUNC3(key, sizeof(key), "%d", track);

    hb_dict_t *used = FUNC0(track_dict, key);
    if (used == NULL)
    {
        used = FUNC1();
        FUNC2(track_dict, key, used);
    }
    return used;
}