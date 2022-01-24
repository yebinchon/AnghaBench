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

/* Variables and functions */
 int SAMPLECOUNT ; 
 scalar_t__ FUNC0 (char*,int*) ; 
 scalar_t__ FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

void*
FUNC3
( char*		sfxname,
  int*		len )
{

    unsigned char*	sfx;
    unsigned char*	paddedsfx;
    int			i;
    int			size;
    int			paddedsize;
    char		name[20];

    FUNC2(name, "ds%s", sfxname);

    sfx = (unsigned char *) FUNC0(name, &size);

    // pad the sound effect out to the mixing buffer size
    paddedsize = ((size-8 + (SAMPLECOUNT-1)) / SAMPLECOUNT) * SAMPLECOUNT;
    paddedsfx = (unsigned char *) FUNC1(sfx, paddedsize+8);
    for (i=size ; i<paddedsize+8 ; i++)
	paddedsfx[i] = 128;

    *len = paddedsize;
    return (void *) (paddedsfx + 8);

}