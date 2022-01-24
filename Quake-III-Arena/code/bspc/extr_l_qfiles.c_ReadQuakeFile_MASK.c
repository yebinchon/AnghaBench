#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ unz_s ;
typedef  scalar_t__ unzFile ;
typedef  int /*<<< orphan*/  tmpbuf ;
struct TYPE_9__ {int /*<<< orphan*/  file; } ;
struct TYPE_8__ {int offset; int /*<<< orphan*/  filename; TYPE_3__ zipinfo; int /*<<< orphan*/  pakfile; scalar_t__ zipfile; } ;
typedef  TYPE_2__ quakefile_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int FUNC8 (TYPE_3__*,void*,int) ; 

int FUNC9(quakefile_t *qf, void *buffer, int offset, int length)
{
	FILE *fp;
	int read;
	unzFile zf;
	char tmpbuf[1024];

	if (qf->zipfile)
	{
		//open the zip file
		zf = FUNC6(qf->pakfile);
		//set the file pointer
		qf->zipinfo.file = ((unz_s *) zf)->file;
		//open the Quake file in the zip file
		FUNC7(&qf->zipinfo);
		//
		while(offset > 0)
		{
			read = offset;
			if (read > sizeof(tmpbuf)) read = sizeof(tmpbuf);
			FUNC8(&qf->zipinfo, tmpbuf, read);
			offset -= read;
		} //end while
		//read the Quake file from the zip file
		length = FUNC8(&qf->zipinfo, buffer, length);
		//close the Quake file in the zip file
		FUNC5(&qf->zipinfo);
		//close the zip file
		FUNC4(zf);

		return length;
	} //end if
	else
	{
		fp = FUNC0(qf->filename);
		if (qf->offset) FUNC3(fp, qf->offset, SEEK_SET);
		if (offset) FUNC3(fp, offset, SEEK_CUR);
		FUNC1(fp, buffer, length);
		FUNC2(fp);

		return length;
	} //end else
}