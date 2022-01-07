
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;
typedef int UInt8 ;
typedef int * CFURLRef ;
typedef int * CFStringRef ;
typedef int * CFDictionaryRef ;
typedef int * CFBundleRef ;


 int * CFBundleCreate (int ,int *) ;
 int * CFBundleGetInfoDictionary (int *) ;
 int * CFDictionaryGetValue (int *,int ) ;
 int CFRelease (int *) ;
 int * CFURLCreateFromFileSystemRepresentation (int ,int const*,int ,int ) ;
 int FALSE ;
 char* convert_cfstring (int *) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 char const* gProgname ;
 int kCFAllocatorDefault ;
 int kCFBundleGetInfoStringKey ;
 int kNSHumanReadableCopyrightKey ;
 int kxld_validate_copyright_string (char*) ;
 int printFormat () ;
 int stderr ;
 int strlen (char const*) ;
 int usage () ;

int
main(int argc, const char *argv[])
{
    int result = 1;
    boolean_t infoCopyrightIsValid = 0;
    boolean_t readableCopyrightIsValid = 0;
    CFURLRef anURL = ((void*)0);
    CFBundleRef aBundle = ((void*)0);
    CFDictionaryRef aDict = ((void*)0);
    CFStringRef infoCopyrightString = ((void*)0);
    CFStringRef readableCopyrightString = ((void*)0);
    char *infoStr = ((void*)0);
    char *readableStr = ((void*)0);

    gProgname = argv[0];

    if (argc != 2) {
        usage();
        goto finish;
    }

    anURL = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault,
        (const UInt8 *) argv[1], strlen(argv[1]), FALSE);
    if (!anURL) {
        fprintf(stderr, "Can't create path from %s\n", argv[1]);
        goto finish;
    }

    aBundle = CFBundleCreate(kCFAllocatorDefault, anURL);
    if (!aBundle) {
        fprintf(stderr, "Can't create bundle at path %s\n", argv[1]);
        goto finish;
    }

    aDict = CFBundleGetInfoDictionary(aBundle);
    if (!aDict) {
        fprintf(stderr, "Can't get info dictionary from bundle\n");
        goto finish;
    }

    infoCopyrightString = CFDictionaryGetValue(aDict, kCFBundleGetInfoStringKey);
    readableCopyrightString = CFDictionaryGetValue(aDict, kNSHumanReadableCopyrightKey);

    if (!infoCopyrightString && !readableCopyrightString) {
        fprintf(stderr, "This kext does not have a value for NSHumanReadableCopyright");
        goto finish;
    }

    if (infoCopyrightString) {
        fprintf(stderr, "Warning: This kext has a value for CFBundleGetInfoString.\n"
            "This key is obsolete, and may be removed from the kext's Info.plist.\n"
            "It has been replaced by CFBundleVersion and NSHumanReadableCopyright.\n\n");

        infoStr = convert_cfstring(infoCopyrightString);
        if (!infoStr) goto finish;

        infoCopyrightIsValid = kxld_validate_copyright_string(infoStr);
    }

    if (readableCopyrightString) {
        readableStr = convert_cfstring(readableCopyrightString);
        if (!readableStr) goto finish;

        readableCopyrightIsValid = kxld_validate_copyright_string(readableStr);
    }

    if (!readableCopyrightIsValid) {
        if (infoCopyrightIsValid) {
            fprintf(stderr, "Warning: The copyright string in NSHumanReadableCopyright is invalid,\n"
                    "but the string in CFBundleGetInfoString is valid.  CFBundleGetInfoString is\n"
                    "obsolete.  Please migrate your copyright string to NSHumanReadableCopyright.\n\n");
        } else {
            fprintf(stderr, "Error: There is no valid copyright string for this kext.\n\n");
            printFormat();
            goto finish;
        }
    }

    result = 0;
finish:
    if (anURL) CFRelease(anURL);
    if (aBundle) CFRelease(aBundle);
    if (infoStr) free(infoStr);
    if (readableStr) free(readableStr);

    return result;
}
