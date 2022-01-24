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
 int /*<<< orphan*/  CC_IDENT ; 
 int /*<<< orphan*/  CONFIG_THIS_YEAR ; 
 int /*<<< orphan*/  FFMPEG_CONFIGURATION ; 
 int /*<<< orphan*/  FFMPEG_VERSION ; 
 int /*<<< orphan*/  SECTION_ID_PROGRAM_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  program_birth_year ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(WriterContext *w)
{
    AVBPrint pbuf;
    FUNC1(&pbuf, 1, AV_BPRINT_SIZE_UNLIMITED);

    FUNC5(w, SECTION_ID_PROGRAM_VERSION);
    FUNC3("version", FFMPEG_VERSION);
    FUNC2("copyright", "Copyright (c) %d-%d the FFmpeg developers",
              program_birth_year, CONFIG_THIS_YEAR);
    FUNC3("compiler_ident", CC_IDENT);
    FUNC3("configuration", FFMPEG_CONFIGURATION);
    FUNC4(w);

    FUNC0(&pbuf, NULL);
}