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
typedef  int /*<<< orphan*/  WriterContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(WriterContext *wctx, const char *key, const char *value)
{
    AVBPrint buf;

    FUNC2(&buf, 1, AV_BPRINT_SIZE_UNLIMITED);
    FUNC4("%s=", FUNC3(&buf, key));
    FUNC0(&buf);
    FUNC4("%s\n", FUNC3(&buf, value));
    FUNC1(&buf, NULL);
}