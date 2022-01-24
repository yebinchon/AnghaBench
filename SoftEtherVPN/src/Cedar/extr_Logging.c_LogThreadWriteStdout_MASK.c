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
struct TYPE_8__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_7__ {int /*<<< orphan*/  FlushEvent; int /*<<< orphan*/  RecordQueue; } ;
typedef  int /*<<< orphan*/  RECORD ;
typedef  TYPE_1__ LOG ;
typedef  int /*<<< orphan*/  IO ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC8(LOG *log_object, BUF *buffer, IO *io)
{
	RECORD *rec;

	// Retrieve a record from the head of the queue
	FUNC4(log_object->RecordQueue);
	{
		rec = FUNC3(log_object->RecordQueue);
	}
	FUNC6(log_object->RecordQueue);

	if (rec == NULL)
	{
		FUNC5(log_object->FlushEvent);
		return false;
	}

	FUNC0(buffer);
	FUNC7(buffer, rec);
	if (!FUNC1(io, buffer->Buf, buffer->Size))
	{
		FUNC0(buffer);
	}
	FUNC2(rec);

	return true;
}