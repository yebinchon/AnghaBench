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
struct ubc_info {struct cs_blob* cs_blobs; int /*<<< orphan*/  ui_vnode; } ;
struct cs_blob {scalar_t__ csb_mem_size; struct cs_blob* csb_next; } ;
typedef  int SInt32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cs_blob_count ; 
 int /*<<< orphan*/  FUNC1 (struct cs_blob*) ; 
 int /*<<< orphan*/  cs_blob_size ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(
	struct ubc_info	*uip)
{
	struct cs_blob	*blob, *next_blob;

	for (blob = uip->cs_blobs;
	     blob != NULL;
	     blob = next_blob) {
		next_blob = blob->csb_next;
		FUNC0(-1, &cs_blob_count);
		FUNC0((SInt32) -blob->csb_mem_size, &cs_blob_size);
		FUNC1(blob);
	}
#if CHECK_CS_VALIDATION_BITMAP
	ubc_cs_validation_bitmap_deallocate( uip->ui_vnode );
#endif
	uip->cs_blobs = NULL;
}