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
typedef  scalar_t__ io_object_t ;
typedef  int /*<<< orphan*/  io_iterator_t ;
typedef  int /*<<< orphan*/  UInt8 ;
typedef  int /*<<< orphan*/  CFMutableDictionaryRef ;
typedef  int /*<<< orphan*/  CFDataRef ;
typedef  int /*<<< orphan*/  CDTOC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFBooleanTrue ; 
 int /*<<< orphan*/  kIOCDMediaClass ; 
 int /*<<< orphan*/  kIOCDMediaTOCKey ; 
 int /*<<< orphan*/  kIOMasterPortDefault ; 
 int /*<<< orphan*/  kIOMediaEjectableKey ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static CDTOC * FUNC12(void)
{
	CFMutableDictionaryRef  classesToMatch;
	io_iterator_t mediaIterator;
	io_object_t media;
	CDTOC * TOC = NULL;

	classesToMatch = FUNC10(kIOCDMediaClass); 
	FUNC2(classesToMatch, FUNC5(kIOMediaEjectableKey),
		kCFBooleanTrue); 
	FUNC9(kIOMasterPortDefault,
		classesToMatch, &mediaIterator);    

	media = FUNC6(mediaIterator);
	
	if(media)
	{
		CFDataRef TOCData = FUNC8(media, FUNC5(kIOCDMediaTOCKey), kCFAllocatorDefault, 0);
		TOC = FUNC11(FUNC1(TOCData));
		FUNC0(TOCData,FUNC3(0,FUNC1(TOCData)),(UInt8 *)TOC);
		FUNC4(TOCData);
		FUNC7(media);
	}
	
	return TOC;
}