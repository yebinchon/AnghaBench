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
struct TYPE_6__ {char* name; char* long_name; int /*<<< orphan*/  priv_class; } ;
struct TYPE_5__ {char* name; char* long_name; int /*<<< orphan*/  priv_class; } ;
typedef  TYPE_1__ AVOutputFormat ;
typedef  TYPE_2__ AVInputFormat ;

/* Variables and functions */
 int SHOW_DEMUXERS ; 
 int SHOW_MUXERS ; 
 TYPE_2__* FUNC0 (void**) ; 
 TYPE_1__* FUNC1 (void**) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 

__attribute__((used)) static int FUNC5(void *optctx, const char *opt, const char *arg, int device_only, int muxdemuxers)
{
    void *ifmt_opaque = NULL;
    const AVInputFormat *ifmt  = NULL;
    void *ofmt_opaque = NULL;
    const AVOutputFormat *ofmt = NULL;
    const char *last_name;
    int is_dev;

    FUNC3("%s\n"
           " D. = Demuxing supported\n"
           " .E = Muxing supported\n"
           " --\n", device_only ? "Devices:" : "File formats:");
    last_name = "000";
    for (;;) {
        int decode = 0;
        int encode = 0;
        const char *name      = NULL;
        const char *long_name = NULL;

        if (muxdemuxers !=SHOW_DEMUXERS) {
            ofmt_opaque = NULL;
            while ((ofmt = FUNC1(&ofmt_opaque))) {
                is_dev = FUNC2(ofmt->priv_class);
                if (!is_dev && device_only)
                    continue;
                if ((!name || FUNC4(ofmt->name, name) < 0) &&
                    FUNC4(ofmt->name, last_name) > 0) {
                    name      = ofmt->name;
                    long_name = ofmt->long_name;
                    encode    = 1;
                }
            }
        }
        if (muxdemuxers != SHOW_MUXERS) {
            ifmt_opaque = NULL;
            while ((ifmt = FUNC0(&ifmt_opaque))) {
                is_dev = FUNC2(ifmt->priv_class);
                if (!is_dev && device_only)
                    continue;
                if ((!name || FUNC4(ifmt->name, name) < 0) &&
                    FUNC4(ifmt->name, last_name) > 0) {
                    name      = ifmt->name;
                    long_name = ifmt->long_name;
                    encode    = 0;
                }
                if (name && FUNC4(ifmt->name, name) == 0)
                    decode = 1;
            }
        }
        if (!name)
            break;
        last_name = name;

        FUNC3(" %s%s %-15s %s\n",
               decode ? "D" : " ",
               encode ? "E" : " ",
               name,
            long_name ? long_name:" ");
    }
    return 0;
}