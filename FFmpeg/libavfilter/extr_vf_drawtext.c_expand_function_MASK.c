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
typedef  int /*<<< orphan*/  AVFilterContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 unsigned int FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char* FUNC3 (char const**,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,unsigned int,char**) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx, AVBPrint *bp, char **rtext)
{
    const char *text = *rtext;
    char *argv[16] = { NULL };
    unsigned argc = 0, i;
    int ret;

    if (*text != '{') {
        FUNC4(ctx, AV_LOG_ERROR, "Stray %% near '%s'\n", text);
        return FUNC0(EINVAL);
    }
    text++;
    while (1) {
        if (!(argv[argc++] = FUNC3(&text, ":}"))) {
            ret = FUNC0(ENOMEM);
            goto end;
        }
        if (!*text) {
            FUNC4(ctx, AV_LOG_ERROR, "Unterminated %%{} near '%s'\n", *rtext);
            ret = FUNC0(EINVAL);
            goto end;
        }
        if (argc == FUNC1(argv))
            FUNC2(&argv[--argc]); /* error will be caught later */
        if (*text == '}')
            break;
        text++;
    }

    if ((ret = FUNC5(ctx, bp, argv[0], argc - 1, argv + 1)) < 0)
        goto end;
    ret = 0;
    *rtext = (char *)text + 1;

end:
    for (i = 0; i < argc; i++)
        FUNC2(&argv[i]);
    return ret;
}