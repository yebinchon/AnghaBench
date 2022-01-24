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
struct Tracks {int /*<<< orphan*/  nb_tracks; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Tracks*) ; 
 scalar_t__ FUNC1 (struct Tracks*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct Tracks*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*,int) ; 

int FUNC5(int argc, char **argv)
{
    const char *out = NULL;
    struct Tracks tracks = { 0 };
    int i;

    for (i = 1; i < argc; i++) {
        if (!FUNC3(argv[i], "-out")) {
            out = argv[i + 1];
            i++;
        } else if (argv[i][0] == '-') {
            return FUNC4(argv[0], 1);
        } else {
            if (FUNC1(&tracks, argv[i]))
                return 1;
        }
    }
    if (!tracks.nb_tracks || !out)
        return FUNC4(argv[0], 1);

    FUNC2(&tracks, out);

    FUNC0(&tracks);

    return 0;
}