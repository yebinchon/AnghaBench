#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct TYPE_6__ {int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct TYPE_9__ {TYPE_2__ firmwareVersion; TYPE_1__ hardwareVersion; int /*<<< orphan*/  ulFreePrivateMemory; int /*<<< orphan*/  ulTotalPrivateMemory; int /*<<< orphan*/  ulFreePublicMemory; int /*<<< orphan*/  ulTotalPublicMemory; int /*<<< orphan*/  ulMaxPinLen; int /*<<< orphan*/  ulMinPinLen; int /*<<< orphan*/  ulMaxRwSessionCount; int /*<<< orphan*/  ulMaxSessionCount; int /*<<< orphan*/  serialNumber; int /*<<< orphan*/  model; int /*<<< orphan*/  manufacturerID; int /*<<< orphan*/  label; } ;
struct TYPE_8__ {void* FirmwareVersion; void* HardwareVersion; int /*<<< orphan*/  FreePrivateMemory; int /*<<< orphan*/  TotalPrivateMemory; int /*<<< orphan*/  FreePublicMemory; int /*<<< orphan*/  TotalPublicMemory; int /*<<< orphan*/  MaxPinLen; int /*<<< orphan*/  MinPinLen; int /*<<< orphan*/  MaxRWSession; int /*<<< orphan*/  MaxSession; void* SerialNumber; void* Model; void* ManufacturerId; void* Label; } ;
typedef  TYPE_3__ SEC_INFO ;
typedef  TYPE_4__ CK_TOKEN_INFO ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 void* FUNC6 (int) ; 

SEC_INFO *FUNC7(void *p_t)
{
	SEC_INFO *s;
	char buf[MAX_SIZE];
	CK_TOKEN_INFO *t = (CK_TOKEN_INFO *)p_t;
	// Validate arguments
	if (t == NULL)
	{
		return NULL;
	}

	s = FUNC6(sizeof(SEC_INFO));

	// Label
	FUNC5(buf, sizeof(buf));
	FUNC1(buf, t->label, sizeof(t->label));
	s->Label = FUNC6(FUNC0(buf, 0));
	FUNC4(s->Label, 0, buf, 0);

	// ManufacturerId
	FUNC5(buf, sizeof(buf));
	FUNC1(buf, t->manufacturerID, sizeof(t->manufacturerID));
	s->ManufacturerId = FUNC6(FUNC0(buf, 0));
	FUNC4(s->ManufacturerId, 0, buf, 0);

	// Model
	FUNC5(buf, sizeof(buf));
	FUNC1(buf, t->model, sizeof(t->model));
	s->Model = FUNC6(FUNC0(buf, 0));
	FUNC4(s->Model, 0, buf, 0);

	// SerialNumber
	FUNC5(buf, sizeof(buf));
	FUNC1(buf, t->serialNumber, sizeof(t->serialNumber));
	s->SerialNumber = FUNC6(FUNC0(buf, 0));
	FUNC4(s->SerialNumber, 0, buf, 0);

	// Numeric value
	s->MaxSession = t->ulMaxSessionCount;
	s->MaxRWSession = t->ulMaxRwSessionCount;
	s->MinPinLen = t->ulMinPinLen;
	s->MaxPinLen = t->ulMaxPinLen;
	s->TotalPublicMemory = t->ulTotalPublicMemory;
	s->FreePublicMemory = t->ulFreePublicMemory;
	s->TotalPrivateMemory = t->ulTotalPrivateMemory;
	s->FreePrivateMemory = t->ulFreePrivateMemory;

	// Hardware version
	FUNC3(buf, sizeof(buf), "%u.%02u", t->hardwareVersion.major, t->hardwareVersion.minor);
	s->HardwareVersion = FUNC2(buf);

	// Firmware version
	FUNC3(buf, sizeof(buf), "%u.%02u", t->firmwareVersion.major, t->firmwareVersion.minor);
	s->FirmwareVersion = FUNC2(buf);

	return s;
}