#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  readorder; } ;
typedef  TYPE_1__ TeletextContext ;
struct TYPE_9__ {int /*<<< orphan*/  str; } ;
typedef  TYPE_2__ AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static char *FUNC6(TeletextContext *ctx, const char *text)
{
    char *dialog;
    AVBPrint buf;

    FUNC1(&buf, 0, AV_BPRINT_SIZE_UNLIMITED);
    FUNC3(&buf, text, FUNC5(text), "", 0);
    if (!FUNC2(&buf)) {
        FUNC0(&buf, NULL);
        return NULL;
    }
    dialog = FUNC4(ctx->readorder++, 0, NULL, NULL, buf.str);
    FUNC0(&buf, NULL);
    return dialog;
}