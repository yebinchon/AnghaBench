
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int versBuffer ;
typedef int OSKextVersion ;
typedef int CFStringRef ;


 scalar_t__ CFStringGetCString (int ,char*,int,int ) ;
 int OSKextParseVersionString (char*) ;
 int kCFStringEncodingASCII ;
 int kOSKextVersionMaxLength ;

OSKextVersion OSKextParseVersionCFString(CFStringRef versionString)
{
    OSKextVersion result = -1;
    char versBuffer[kOSKextVersionMaxLength];

    if (CFStringGetCString(versionString, versBuffer,
        sizeof(versBuffer), kCFStringEncodingASCII)) {

        result = OSKextParseVersionString(versBuffer);
    }
    return result;
}
