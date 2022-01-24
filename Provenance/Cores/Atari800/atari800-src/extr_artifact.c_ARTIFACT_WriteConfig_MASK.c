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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ANTIC_artif_mode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 char** mode_cfg_strings ; 
 size_t mode_ntsc ; 
 size_t mode_pal ; 

void FUNC1(FILE *fp)
{
	FUNC0(fp, "ARTIFACT_NTSC=%s\n", mode_cfg_strings[mode_ntsc]);
	FUNC0(fp, "ARTIFACT_PAL=%s\n", mode_cfg_strings[mode_pal]);
	FUNC0(fp, "ARTIFACT_NTSC_MODE=%i\n", ANTIC_artif_mode);
}