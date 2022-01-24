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
struct TYPE_7__ {void* size; void* filepos; void* infotableofs; void* numlumps; } ;
typedef  TYPE_1__ wadinfo_t ;
struct TYPE_8__ {void* size; void* position; } ;
typedef  TYPE_2__ lumpinfo_t ;
typedef  int /*<<< orphan*/  header ;
typedef  TYPE_1__ filelump_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*) ; 
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,void*,int /*<<< orphan*/ ) ; 
 scalar_t__* lumpcache ; 
 TYPE_2__* lumpinfo ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_1__*,int) ; 
 size_t reloadlump ; 
 int /*<<< orphan*/  reloadname ; 

void FUNC8 (void)
{
    wadinfo_t		header;
    int			lumpcount;
    lumpinfo_t*		lump_p;
    unsigned		i;
    int			handle;
    int			length;
    filelump_t*		fileinfo;
	
    if (!reloadname)
	return;
		
    if ( (handle = FUNC6 (reloadname,O_RDONLY | O_BINARY)) == -1)
	FUNC0 ("W_Reload: couldn't open %s",reloadname);

    FUNC7 (handle, &header, sizeof(header));
    lumpcount = FUNC1(header.numlumps);
    header.infotableofs = FUNC1(header.infotableofs);
    length = lumpcount*sizeof(filelump_t);
    fileinfo = FUNC3 (length);
    FUNC5 (handle, header.infotableofs, SEEK_SET);
    FUNC7 (handle, fileinfo, length);
    
    // Fill in lumpinfo
    lump_p = &lumpinfo[reloadlump];
	
    for (i=reloadlump ;
	 i<reloadlump+lumpcount ;
	 i++,lump_p++, fileinfo++)
    {
	if (lumpcache[i])
	    FUNC2 (lumpcache[i]);

	lump_p->position = FUNC1(fileinfo->filepos);
	lump_p->size = FUNC1(fileinfo->size);
    }
	
    FUNC4 (handle);
}