#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  errbuf ;
struct TYPE_6__ {int /*<<< orphan*/ * priv_data; } ;
typedef  int /*<<< orphan*/  DASHContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_ERROR_MAX_STRING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int FUNC5 (char*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(AVFormatContext *s, char *filename) {
    DASHContext *c = s->priv_data;
    int http_base_proto = FUNC8(filename);

    if (http_base_proto) {
        AVIOContext *out = NULL;
        AVDictionary *http_opts = NULL;

        FUNC9(&http_opts, c);
        FUNC2(&http_opts, "method", "DELETE", 0);

        if (FUNC6(s, &out, filename, &http_opts) < 0) {
            FUNC3(s, AV_LOG_ERROR, "failed to delete %s\n", filename);
        }

        FUNC1(&http_opts);
        FUNC7(s, &out);
    } else {
        int res = FUNC5(filename);
        if (res < 0) {
            char errbuf[AV_ERROR_MAX_STRING_SIZE];
            FUNC4(res, errbuf, sizeof(errbuf));
            FUNC3(s, (res == FUNC0(ENOENT) ? AV_LOG_WARNING : AV_LOG_ERROR), "failed to delete %s: %s\n", filename, errbuf);
        }
    }
}