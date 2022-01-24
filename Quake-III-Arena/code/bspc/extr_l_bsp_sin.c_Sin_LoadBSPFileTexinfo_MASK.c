#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sin_texinfo_t ;
typedef  int /*<<< orphan*/  sin_dheader_t ;
struct TYPE_8__ {scalar_t__ ident; scalar_t__ version; TYPE_1__* lumps; } ;
struct TYPE_7__ {int filelen; int fileofs; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ SINGAME_BSPHEADER ; 
 scalar_t__ SINGAME_BSPVERSION ; 
 scalar_t__ SIN_BSPHEADER ; 
 scalar_t__ SIN_BSPVERSION ; 
 size_t SIN_LUMP_TEXINFO ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* header ; 
 int sin_numtexinfo ; 
 TYPE_2__* sin_texinfo ; 

void	FUNC9 (char *filename)
{
	int			i;
	FILE		*f;
	int		length, ofs;

	header = FUNC2(sizeof(sin_dheader_t));

	f = FUNC6 (filename, "rb");
	FUNC7 (header, sizeof(sin_dheader_t), 1, f);

// swap the header
	for (i=0 ; i< sizeof(sin_dheader_t)/4 ; i++)
		((int *)header)[i] = FUNC3 ( ((int *)header)[i]);

	if (header->ident != SIN_BSPHEADER && header->ident != SINGAME_BSPHEADER)
		FUNC0 ("%s is not a IBSP file", filename);
	if (header->version != SIN_BSPVERSION && header->version != SINGAME_BSPVERSION)
		FUNC0 ("%s is version %i, not %i", filename, header->version, SIN_BSPVERSION);


	length = header->lumps[SIN_LUMP_TEXINFO].filelen;
	ofs = header->lumps[SIN_LUMP_TEXINFO].fileofs;

	FUNC8 (f, ofs, SEEK_SET);
	FUNC7 (sin_texinfo, length, 1, f);
	FUNC5 (f);

	sin_numtexinfo = length / sizeof(sin_texinfo_t);

	FUNC1(header);		// everything has been copied out
		
	FUNC4 (false);
}