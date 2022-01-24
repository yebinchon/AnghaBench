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
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  WriterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SECTION_ID_ERROR ; 
 scalar_t__ FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(WriterContext *w, int err)
{
    char errbuf[128];
    const char *errbuf_ptr = errbuf;

    if (FUNC1(err, errbuf, sizeof(errbuf)) < 0)
        errbuf_ptr = FUNC4(FUNC0(err));

    FUNC6(w, SECTION_ID_ERROR);
    FUNC2("code", err);
    FUNC3("string", errbuf_ptr);
    FUNC5(w);
}