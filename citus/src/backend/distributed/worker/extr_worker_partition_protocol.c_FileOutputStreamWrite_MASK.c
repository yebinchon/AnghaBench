#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
struct TYPE_9__ {TYPE_1__* fileBuffer; } ;
struct TYPE_8__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  TYPE_2__ FileOutputStream ;

/* Variables and functions */
 scalar_t__ FileBufferSizeInBytes ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(FileOutputStream *file, StringInfo dataToWrite)
{
	StringInfo fileBuffer = file->fileBuffer;
	uint32 newBufferSize = fileBuffer->len + dataToWrite->len;

	FUNC1(fileBuffer, dataToWrite->data, dataToWrite->len);

	if (newBufferSize > FileBufferSizeInBytes)
	{
		FUNC0(file);

		FUNC2(fileBuffer);
	}
}