#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int type; int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ CARTRIDGE_image_t ;

/* Variables and functions */
 int CARTRIDGE_BAD_FORMAT ; 
 int CARTRIDGE_CANT_OPEN ; 
 int CARTRIDGE_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int CARTRIDGE_UNKNOWN ; 
 int* CARTRIDGE_kb ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(CARTRIDGE_image_t *cart)
{
	if (cart->type != CARTRIDGE_NONE) {
		int tmp_type = cart->type;
		int res = FUNC1(cart->filename, cart);
		if (res < 0) {
			FUNC2("Error inserting cartridge \"%s\": %s", cart->filename,
			res == CARTRIDGE_CANT_OPEN ? "Can't open file" :
			res == CARTRIDGE_BAD_FORMAT ? "Bad format" :
			/* Assume r == CARTRIDGE_BAD_CHECKSUM */ "Bad checksum");
			cart->type = CARTRIDGE_NONE;
		}
		if (cart->type == CARTRIDGE_UNKNOWN && CARTRIDGE_kb[tmp_type] == res)
			FUNC0(cart, tmp_type);
	}
}