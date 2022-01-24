#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int ctl_addr; int fad_start; int fad_end; int file_offset; int sector_size; int file_size; scalar_t__ interleaved_sub; scalar_t__ file_id; int /*<<< orphan*/ * fp; } ;
typedef  TYPE_1__ track_info_struct ;
typedef  int /*<<< orphan*/  session_info_struct ;
struct TYPE_10__ {TYPE_4__* dict; } ;
typedef  TYPE_2__ ccd_struct ;
struct TYPE_12__ {int session_num; TYPE_4__* session; } ;
struct TYPE_11__ {int fad_start; int track_num; int fad_end; TYPE_1__* track; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 void* FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  YAB_ERR_FILEREAD ; 
 int /*<<< orphan*/  YAB_ERR_MEMORYALLOC ; 
 int /*<<< orphan*/  YAB_ERR_OTHER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_6__ disc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 char* FUNC12 (char*,char) ; 

__attribute__((used)) static int FUNC13(const char *ccd_filename, FILE *iso_file)
{
	int i;
	ccd_struct ccd;
	int num_toc;
	char img_filename[512];
	char *ext;
	FILE *fp;

	FUNC11(img_filename, ccd_filename);
	ext = FUNC12(img_filename, '.');
	FUNC11(ext, ".img");
	fp = FUNC5(img_filename, "rb");

	if (fp == NULL)
	{
		FUNC3(YAB_ERR_FILEREAD, img_filename);
		return -1;
	}

	FUNC7(iso_file, 0, SEEK_SET);

	// Load CCD file as dictionary
	if (FUNC1(iso_file, &ccd))
	{
		FUNC4(fp);
		FUNC3(YAB_ERR_FILEREAD, ccd_filename);
		return -1;
	}

	num_toc = FUNC0(&ccd, "DISC", "TocEntries");
	disc.session_num = FUNC0(&ccd, "DISC", "Sessions");
	if (disc.session_num != 1)
	{
		FUNC4(fp);
		FUNC3(YAB_ERR_OTHER, "Sessions more than 1 are unsupported");
		return -1;
	}

	disc.session = FUNC8(sizeof(session_info_struct) * disc.session_num);
	if (disc.session == NULL)
	{
		FUNC4(fp);
		FUNC6(ccd.dict);
		FUNC3(YAB_ERR_MEMORYALLOC, NULL);
		return -1;
	}

	if (FUNC0(&ccd, "DISC", "DataTracksScrambled"))
	{
		FUNC4(fp);
		FUNC6(ccd.dict);
		FUNC6(disc.session);
		FUNC3(YAB_ERR_OTHER, "CCD Scrambled Tracks not supported");
		return -1;
	}

	// Find track number and allocate
	for (i = 0; i < num_toc; i++)
	{
		char sect_name[64];
		int point;

		FUNC10(sect_name, "Entry %d", i);
		point = FUNC0(&ccd, sect_name, "Point");

		if (point == 0xA1)
		{
			int ses = FUNC0(&ccd, sect_name, "Session");

			disc.session[ses-1].fad_start = 150;
			disc.session[ses-1].track_num=FUNC0(&ccd, sect_name, "PMin");;
			disc.session[ses-1].track = (track_info_struct *)FUNC8(disc.session[ses-1].track_num * sizeof(track_info_struct));
			if (disc.session[ses-1].track == NULL)
			{
				FUNC4(fp);
				FUNC6(ccd.dict);
				FUNC6(disc.session);
				FUNC3(YAB_ERR_MEMORYALLOC, NULL);
				return -1;
			}
			FUNC9(disc.session[ses-1].track, 0, disc.session[ses-1].track_num * sizeof(track_info_struct));
		}
	}

	// Load TOC
	for (i = 0; i < num_toc; i++)
	{
		char sect_name[64];
		int ses, point, adr, control, trackno, amin, asec, aframe;
		int alba, zero, pmin, psec, pframe, plba;

		FUNC10(sect_name, "Entry %d", i);

		ses = FUNC0(&ccd, sect_name, "Session");
		point = FUNC0(&ccd, sect_name, "Point");
		adr = FUNC0(&ccd, sect_name, "ADR");
		control = FUNC0(&ccd, sect_name, "Control");
		trackno = FUNC0(&ccd, sect_name, "TrackNo");
		amin = FUNC0(&ccd, sect_name, "AMin");
		asec = FUNC0(&ccd, sect_name, "ASec");
		aframe = FUNC0(&ccd, sect_name, "AFrame");
		alba = FUNC0(&ccd, sect_name, "ALBA");
		zero = FUNC0(&ccd, sect_name, "Zero");
		pmin = FUNC0(&ccd, sect_name, "PMin");
		psec = FUNC0(&ccd, sect_name, "PSec");
		pframe = FUNC0(&ccd, sect_name, "PFrame");
		plba = FUNC0(&ccd, sect_name, "PLBA");

		if(point >= 1 && point <= 99)
		{
			track_info_struct *track=&disc.session[ses-1].track[point-1];
			track->ctl_addr = (control << 4) | adr;
			track->fad_start = FUNC2(pmin, psec, pframe);
			if (point >= 2)
			   disc.session[ses-1].track[point-2].fad_end = track->fad_start-1;
			track->file_offset = plba*2352;
			track->sector_size = 2352;
			track->fp = fp;
			track->file_size = (track->fad_end+1-track->fad_start)*2352;
			track->file_id = 0;
			track->interleaved_sub = 0;
		}
		else if (point == 0xA2)
		{
			disc.session[ses-1].fad_end = FUNC2(pmin, psec, pframe);
			disc.session[ses-1].track[disc.session[ses-1].track_num-1].fad_end = disc.session[ses-1].fad_end;
		}
	}

	FUNC4(iso_file);

	return 0;
}