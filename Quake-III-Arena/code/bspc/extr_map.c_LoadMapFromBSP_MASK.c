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
struct quakefile_s {int /*<<< orphan*/  length; int /*<<< orphan*/  offset; int /*<<< orphan*/  filename; } ;
struct TYPE_3__ {int ident; int version; } ;
typedef  TYPE_1__ idheader_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int HL_BSPVERSION ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int Q1_BSPVERSION ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int Q2_BSPHEADER ; 
 scalar_t__ Q2_BSPVERSION ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int Q3_BSP_IDENT ; 
 scalar_t__ Q3_BSP_VERSION ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct quakefile_s*) ; 
 int FUNC13 (struct quakefile_s*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int SINGAME_BSPHEADER ; 
 scalar_t__ SINGAME_BSPVERSION ; 
 int SIN_BSPHEADER ; 
 scalar_t__ SIN_BSPVERSION ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC18(struct quakefile_s *qf)
{
	idheader_t idheader;

	if (FUNC13(qf, &idheader, 0, sizeof(idheader_t)) != sizeof(idheader_t))
	{
		return false;
	} //end if

	idheader.ident = FUNC4(idheader.ident);
	idheader.version = FUNC4(idheader.version);
	//Quake3 BSP file
	if (idheader.ident == Q3_BSP_IDENT && idheader.version == Q3_BSP_VERSION)
	{
		FUNC14();
		FUNC12(qf);
		FUNC11();
	} //end if
	//Quake2 BSP file
	else if (idheader.ident == Q2_BSPHEADER && idheader.version == Q2_BSPVERSION)
	{
		FUNC14();
		FUNC8();
		FUNC10(qf->filename, qf->offset, qf->length);
		FUNC9();
	} //endif
	//Sin BSP file
	else if ((idheader.ident == SIN_BSPHEADER && idheader.version == SIN_BSPVERSION) ||
				//the dorks gave the same format another ident and verions
				(idheader.ident == SINGAME_BSPHEADER && idheader.version == SINGAME_BSPVERSION))
	{
		FUNC14();
		FUNC15();
		FUNC17(qf->filename, qf->offset, qf->length);
		FUNC16();
	} //end if
	//the Quake1 bsp files don't have a ident only a version
	else if (idheader.ident == Q1_BSPVERSION)
	{
		FUNC14();
		FUNC5();
		FUNC7(qf->filename, qf->offset, qf->length);
		FUNC6();
	} //end if
	//Half-Life also only uses a version number
	else if (idheader.ident == HL_BSPVERSION)
	{
		FUNC14();
		FUNC1();
		FUNC3(qf->filename, qf->offset, qf->length);
		FUNC2();
	} //end if
	else
	{
		FUNC0("unknown BSP format %c%c%c%c, version %d\n",
										(idheader.ident & 0xFF),
										((idheader.ident >> 8) & 0xFF),
										((idheader.ident >> 16) & 0xFF),
										((idheader.ident >> 24) & 0xFF), idheader.version);
		return false;
	} //end if
	//
	return true;
}