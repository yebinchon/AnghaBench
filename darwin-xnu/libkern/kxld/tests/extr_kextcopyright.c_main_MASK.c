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
typedef  int boolean_t ;
typedef  int /*<<< orphan*/  UInt8 ;
typedef  int /*<<< orphan*/ * CFURLRef ;
typedef  int /*<<< orphan*/ * CFStringRef ;
typedef  int /*<<< orphan*/ * CFDictionaryRef ;
typedef  int /*<<< orphan*/ * CFBundleRef ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char const* gProgname ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFBundleGetInfoStringKey ; 
 int /*<<< orphan*/  kNSHumanReadableCopyrightKey ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

int
FUNC12(int argc, const char *argv[])
{
    int result = 1;
    boolean_t infoCopyrightIsValid = false;
    boolean_t readableCopyrightIsValid = false;
    CFURLRef anURL = NULL;                      // must release
    CFBundleRef aBundle = NULL;                 // must release
    CFDictionaryRef aDict = NULL;               // do not release
    CFStringRef infoCopyrightString = NULL;     // do not release
    CFStringRef readableCopyrightString = NULL; // do not release
    char *infoStr = NULL;                       // must free
    char *readableStr = NULL;                   // must free

    gProgname = argv[0];

    if (argc != 2) {
        FUNC11();
        goto finish;
    }

    anURL = FUNC4(kCFAllocatorDefault,
        (const UInt8 *) argv[1], FUNC10(argv[1]), /* isDirectory */ FALSE);
    if (!anURL) {
        FUNC6(stderr, "Can't create path from %s\n", argv[1]);
        goto finish;
    }

    aBundle = FUNC0(kCFAllocatorDefault, anURL);
    if (!aBundle) {
        FUNC6(stderr, "Can't create bundle at path %s\n", argv[1]);
        goto finish;
    }

    aDict = FUNC1(aBundle);
    if (!aDict) {
        FUNC6(stderr, "Can't get info dictionary from bundle\n");
        goto finish;
    }

    infoCopyrightString = FUNC2(aDict, kCFBundleGetInfoStringKey);
    readableCopyrightString = FUNC2(aDict, kNSHumanReadableCopyrightKey);

    if (!infoCopyrightString && !readableCopyrightString) {
        FUNC6(stderr, "This kext does not have a value for NSHumanReadableCopyright");
        goto finish;
    }

    if (infoCopyrightString) {
        FUNC6(stderr, "Warning: This kext has a value for CFBundleGetInfoString.\n"
            "This key is obsolete, and may be removed from the kext's Info.plist.\n"
            "It has been replaced by CFBundleVersion and NSHumanReadableCopyright.\n\n");

        infoStr = FUNC5(infoCopyrightString);
        if (!infoStr) goto finish;

        infoCopyrightIsValid = FUNC8(infoStr); 
    }

    if (readableCopyrightString) {
        readableStr = FUNC5(readableCopyrightString);
        if (!readableStr) goto finish;

        readableCopyrightIsValid = FUNC8(readableStr);
    }

    if (!readableCopyrightIsValid) {
        if (infoCopyrightIsValid) {
            FUNC6(stderr, "Warning: The copyright string in NSHumanReadableCopyright is invalid,\n"
                    "but the string in CFBundleGetInfoString is valid.  CFBundleGetInfoString is\n"
                    "obsolete.  Please migrate your copyright string to NSHumanReadableCopyright.\n\n");
        } else {
            FUNC6(stderr, "Error: There is no valid copyright string for this kext.\n\n");
            FUNC9(); 
            goto finish;
        }
    }

    result = 0;
finish:
    if (anURL) FUNC3(anURL);
    if (aBundle) FUNC3(aBundle);
    if (infoStr) FUNC7(infoStr);
    if (readableStr) FUNC7(readableStr);

    return result;
}