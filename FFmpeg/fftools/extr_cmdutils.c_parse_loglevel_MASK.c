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
typedef  int /*<<< orphan*/  OptionDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (char,scalar_t__) ; 
 char* FUNC5 (char*) ; 
 int hide_banner ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int FUNC7 (int,char**,int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ report_file ; 

void FUNC9(int argc, char **argv, const OptionDef *options)
{
    int idx = FUNC7(argc, argv, options, "loglevel");
    const char *env;

    FUNC0(options);

    if (!idx)
        idx = FUNC7(argc, argv, options, "v");
    if (idx && argv[idx + 1])
        FUNC8(NULL, "loglevel", argv[idx + 1]);
    idx = FUNC7(argc, argv, options, "report");
    if ((env = FUNC5("FFREPORT")) || idx) {
        FUNC6(env);
        if (report_file) {
            int i;
            FUNC3(report_file, "Command line:\n");
            for (i = 0; i < argc; i++) {
                FUNC1(argv[i]);
                FUNC4(i < argc - 1 ? ' ' : '\n', report_file);
            }
            FUNC2(report_file);
        }
    }
    idx = FUNC7(argc, argv, options, "hide_banner");
    if (idx)
        hide_banner = 1;
}