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
 int /*<<< orphan*/  PU_STATIC ; 
 int FUNC0 (char*) ; 
 int* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int firstflat ; 
 int* flattranslation ; 
 int lastflat ; 
 int numflats ; 

void FUNC2 (void)
{
    int		i;
	
    firstflat = FUNC0 ("F_START") + 1;
    lastflat = FUNC0 ("F_END") - 1;
    numflats = lastflat - firstflat + 1;
	
    // Create translation table for global animation.
    flattranslation = FUNC1 ((numflats+1)*4, PU_STATIC, 0);
    
    for (i=0 ; i<numflats ; i++)
	flattranslation[i] = i;
}