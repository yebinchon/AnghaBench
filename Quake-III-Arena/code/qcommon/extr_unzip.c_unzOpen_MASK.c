#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ number_entry; scalar_t__ size_comment; } ;
struct TYPE_4__ {scalar_t__ size_central_dir; scalar_t__ offset_central_dir; int /*<<< orphan*/ * pfile_in_zip_read; scalar_t__ central_pos; scalar_t__ byte_before_the_zipfile; int /*<<< orphan*/ * file; TYPE_1__ gi; } ;
typedef  TYPE_2__ unz_s ;
typedef  int /*<<< orphan*/ * unzFile ;
typedef  scalar_t__ uLong ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int UNZ_BADZIPFILE ; 
 int UNZ_ERRNO ; 
 int UNZ_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__*) ; 

extern unzFile FUNC7 (const char* path)
{
	unz_s us;
	unz_s *s;
	uLong central_pos,uL;
	FILE * fin ;

	uLong number_disk;          /* number of the current dist, used for 
								   spaning ZIP, unsupported, always 0*/
	uLong number_disk_with_CD;  /* number the the disk with central dir, used
								   for spaning ZIP, unsupported, always 0*/
	uLong number_entry_CD;      /* total number of entries in
	                               the central dir 
	                               (same than number_entry on nospan) */

	int err=UNZ_OK;

    fin=FUNC2(path,"rb");
	if (fin==NULL)
		return NULL;

	central_pos = FUNC4(fin);
	if (central_pos==0)
		err=UNZ_ERRNO;

	if (FUNC3(fin,central_pos,SEEK_SET)!=0)
		err=UNZ_ERRNO;

	/* the signature, already checked */
	if (FUNC5(fin,&uL)!=UNZ_OK)
		err=UNZ_ERRNO;

	/* number of this disk */
	if (FUNC6(fin,&number_disk)!=UNZ_OK)
		err=UNZ_ERRNO;

	/* number of the disk with the start of the central directory */
	if (FUNC6(fin,&number_disk_with_CD)!=UNZ_OK)
		err=UNZ_ERRNO;

	/* total number of entries in the central dir on this disk */
	if (FUNC6(fin,&us.gi.number_entry)!=UNZ_OK)
		err=UNZ_ERRNO;

	/* total number of entries in the central dir */
	if (FUNC6(fin,&number_entry_CD)!=UNZ_OK)
		err=UNZ_ERRNO;

	if ((number_entry_CD!=us.gi.number_entry) ||
		(number_disk_with_CD!=0) ||
		(number_disk!=0))
		err=UNZ_BADZIPFILE;

	/* size of the central directory */
	if (FUNC5(fin,&us.size_central_dir)!=UNZ_OK)
		err=UNZ_ERRNO;

	/* offset of start of central directory with respect to the 
	      starting disk number */
	if (FUNC5(fin,&us.offset_central_dir)!=UNZ_OK)
		err=UNZ_ERRNO;

	/* zipfile comment length */
	if (FUNC6(fin,&us.gi.size_comment)!=UNZ_OK)
		err=UNZ_ERRNO;

	if ((central_pos<us.offset_central_dir+us.size_central_dir) && 
		(err==UNZ_OK))
		err=UNZ_BADZIPFILE;

	if (err!=UNZ_OK)
	{
		FUNC1(fin);
		return NULL;
	}

	us.file=fin;
	us.byte_before_the_zipfile = central_pos -
		                    (us.offset_central_dir+us.size_central_dir);
	us.central_pos = central_pos;
    us.pfile_in_zip_read = NULL;
	

	s=(unz_s*)FUNC0(sizeof(unz_s));
	*s=us;
//	unzGoToFirstFile((unzFile)s);	
	return (unzFile)s;	
}