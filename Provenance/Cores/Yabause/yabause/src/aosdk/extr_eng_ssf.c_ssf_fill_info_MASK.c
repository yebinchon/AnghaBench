#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_4__ {int /*<<< orphan*/ * info; int /*<<< orphan*/ * title; } ;
typedef  TYPE_1__ ao_display_info ;
struct TYPE_5__ {char* inf_title; char* inf_game; char* inf_artist; char* inf_copy; char* inf_year; char* inf_length; char* inf_fade; } ;

/* Variables and functions */
 int /*<<< orphan*/  AO_FAIL ; 
 int /*<<< orphan*/  AO_SUCCESS ; 
 TYPE_3__* c ; 
 char* psfby ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

s32 FUNC2(ao_display_info *info)
{
	if (c == NULL)
		return AO_FAIL;

	FUNC1(info->title[1], "Name: ");
	FUNC0(info->info[1], "%s", c->inf_title);

	FUNC1(info->title[2], "Game: ");
	FUNC0(info->info[2], "%s", c->inf_game);

	FUNC1(info->title[3], "Artist: ");
	FUNC0(info->info[3], "%s", c->inf_artist);

	FUNC1(info->title[4], "Copyright: ");
	FUNC0(info->info[4], "%s", c->inf_copy);

	FUNC1(info->title[5], "Year: ");
	FUNC0(info->info[5], "%s", c->inf_year);

	FUNC1(info->title[6], "Length: ");
	FUNC0(info->info[6], "%s", c->inf_length);

	FUNC1(info->title[7], "Fade: ");
	FUNC0(info->info[7], "%s", c->inf_fade);

	FUNC1(info->title[8], "Ripper: ");
	FUNC0(info->info[8], "%s", psfby);

	return AO_SUCCESS;
}