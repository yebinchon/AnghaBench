#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  data; int /*<<< orphan*/  description; int /*<<< orphan*/  file_name; int /*<<< orphan*/  mime_type; } ;
typedef  TYPE_1__ ID3v2ExtraMetaGEOB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *obj)
{
    ID3v2ExtraMetaGEOB *geob = obj;
    FUNC1(&geob->mime_type);
    FUNC1(&geob->file_name);
    FUNC1(&geob->description);
    FUNC1(&geob->data);
    FUNC0(geob);
}