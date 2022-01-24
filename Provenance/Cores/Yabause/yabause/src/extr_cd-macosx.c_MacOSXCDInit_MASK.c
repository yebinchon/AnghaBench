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
typedef  scalar_t__ CFTypeRef ;
typedef  int /*<<< orphan*/  CFMutableDictionaryRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  _PATH_DEV ; 
 int hCDROM ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFBooleanTrue ; 
 int /*<<< orphan*/  kCFStringEncodingUTF8 ; 
 int /*<<< orphan*/  kIOBSDNameKey ; 
 int /*<<< orphan*/  kIOCDMediaClass ; 
 int /*<<< orphan*/  kIOMasterPortDefault ; 
 int /*<<< orphan*/  kIOMediaEjectableKey ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC12 (char*) ; 

__attribute__((used)) static int FUNC13(const char * useless_for_now)
{
	CFMutableDictionaryRef  classesToMatch;
	io_iterator_t mediaIterator;
	io_object_t media;
	char cdrom_name[ MAXPATHLEN ];

	classesToMatch = FUNC8(kIOCDMediaClass); 
	FUNC0(classesToMatch, FUNC2(kIOMediaEjectableKey),
		kCFBooleanTrue); 
	FUNC7(kIOMasterPortDefault,
		classesToMatch, &mediaIterator);    

	media = FUNC4(mediaIterator);
	
	if(media)
	{
		CFTypeRef path;

		path = FUNC6(media,
			FUNC2(kIOBSDNameKey),
			kCFAllocatorDefault, 0);

		if (path)
		{
			size_t length;

			FUNC11(cdrom_name, _PATH_DEV);
			FUNC10(cdrom_name, "r");
			length = FUNC12(cdrom_name);

			FUNC3(path, cdrom_name + length,
				MAXPATHLEN - length, kCFStringEncodingUTF8);

			FUNC1(path);
		}
		FUNC5(media);
	}

	if ((hCDROM = FUNC9(cdrom_name, O_RDONLY)) == -1)
	{
		return -1;
	}

	return 0;
}