
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ io_object_t ;
typedef int io_iterator_t ;
typedef scalar_t__ CFTypeRef ;
typedef int CFMutableDictionaryRef ;


 int CFDictionarySetValue (int ,int ,int ) ;
 int CFRelease (scalar_t__) ;
 int CFSTR (int ) ;
 int CFStringGetCString (scalar_t__,char*,int,int ) ;
 scalar_t__ IOIteratorNext (int ) ;
 int IOObjectRelease (scalar_t__) ;
 scalar_t__ IORegistryEntryCreateCFProperty (scalar_t__,int ,int ,int ) ;
 int IOServiceGetMatchingServices (int ,int ,int *) ;
 int IOServiceMatching (int ) ;
 int MAXPATHLEN ;
 int O_RDONLY ;
 int _PATH_DEV ;
 int hCDROM ;
 int kCFAllocatorDefault ;
 int kCFBooleanTrue ;
 int kCFStringEncodingUTF8 ;
 int kIOBSDNameKey ;
 int kIOCDMediaClass ;
 int kIOMasterPortDefault ;
 int kIOMediaEjectableKey ;
 int open (char*,int ) ;
 int strcat (char*,char*) ;
 int strcpy (char*,int ) ;
 size_t strlen (char*) ;

__attribute__((used)) static int MacOSXCDInit(const char * useless_for_now)
{
 CFMutableDictionaryRef classesToMatch;
 io_iterator_t mediaIterator;
 io_object_t media;
 char cdrom_name[ MAXPATHLEN ];

 classesToMatch = IOServiceMatching(kIOCDMediaClass);
 CFDictionarySetValue(classesToMatch, CFSTR(kIOMediaEjectableKey),
  kCFBooleanTrue);
 IOServiceGetMatchingServices(kIOMasterPortDefault,
  classesToMatch, &mediaIterator);

 media = IOIteratorNext(mediaIterator);

 if(media)
 {
  CFTypeRef path;

  path = IORegistryEntryCreateCFProperty(media,
   CFSTR(kIOBSDNameKey),
   kCFAllocatorDefault, 0);

  if (path)
  {
   size_t length;

   strcpy(cdrom_name, _PATH_DEV);
   strcat(cdrom_name, "r");
   length = strlen(cdrom_name);

   CFStringGetCString(path, cdrom_name + length,
    MAXPATHLEN - length, kCFStringEncodingUTF8);

   CFRelease(path);
  }
  IOObjectRelease(media);
 }

 if ((hCDROM = open(cdrom_name, O_RDONLY)) == -1)
 {
  return -1;
 }

 return 0;
}
