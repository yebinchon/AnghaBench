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
struct TYPE_3__ {int write_header_ret; int write_trailer_ret; int (* test_func ) (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ;char* test_name; int /*<<< orphan*/  pkt_data; scalar_t__ print_summary_on_deinit; int /*<<< orphan*/  options; } ;
typedef  TYPE_1__ TestCase ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(const TestCase *test)
{
    AVDictionary *opts = NULL;
    AVFormatContext *oc = NULL;
    char buffer[BUFFER_SIZE];
    int ret, ret1;

    ret = FUNC6(&oc);
    if (ret < 0) {
        FUNC5(stderr, "Muxer initialization failed: %s\n", FUNC3(ret));
        goto end;
    }

    if (test->options) {
        ret = FUNC1(&opts, test->options, "=", ":", 0);
        if (ret < 0) {
            FUNC5(stderr, "Failed to parse options: %s\n", FUNC3(ret));
            goto end;
        }
    }

    FUNC8(buffer, BUFFER_SIZE,
             "print_deinit_summary=%d:write_header_ret=%d:write_trailer_ret=%d",
             (int)test->print_summary_on_deinit, test->write_header_ret,
             test->write_trailer_ret);
    ret = FUNC2(&opts, "format_opts", buffer, 0);
    ret1 = FUNC2(&opts, "fifo_format", "fifo_test", 0);
    if (ret < 0 || ret1 < 0) {
        FUNC5(stderr, "Failed to set options for test muxer: %s\n",
                FUNC3(ret));
        goto end;
    }

    ret = test->test_func(oc, &opts, &test->pkt_data);

end:
    FUNC7("%s: %s\n", test->test_name, ret < 0 ? "fail" : "ok");
    FUNC4(oc);
    FUNC0(&opts);
    return ret;
}