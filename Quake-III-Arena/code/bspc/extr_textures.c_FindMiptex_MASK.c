#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* animname; int /*<<< orphan*/  contents; int /*<<< orphan*/  flags; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ miptex_t ;
struct TYPE_5__ {char* name; char* animname; void* contents; void* flags; void* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int MAX_MAP_TEXTURES ; 
 int FUNC3 (char*,void**) ; 
 char* gamedir ; 
 int nummiptex ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 TYPE_2__* textureref ; 

int FUNC7 (char *name)
{
	int i;
	char path[1024];
	miptex_t	*mt;

	for (i = 0; i < nummiptex; i++)
	{
		if (!FUNC5 (name, textureref[i].name))
		{
			return i;
		} //end if
	} //end for
	if (nummiptex == MAX_MAP_TEXTURES)
		FUNC0 ("MAX_MAP_TEXTURES");
	FUNC6 (textureref[i].name, name);

	// load the miptex to get the flags and values
	FUNC4 (path, "%stextures/%s.wal", gamedir, name);
	if (FUNC3 (path, (void **)&mt) != -1)
	{
		textureref[i].value = FUNC2 (mt->value);
		textureref[i].flags = FUNC2 (mt->flags);
		textureref[i].contents = FUNC2 (mt->contents);
		FUNC6 (textureref[i].animname, mt->animname);
		FUNC1(mt);
	} //end if
	nummiptex++;

	if (textureref[i].animname[0])
		FUNC7 (textureref[i].animname);

	return i;
}