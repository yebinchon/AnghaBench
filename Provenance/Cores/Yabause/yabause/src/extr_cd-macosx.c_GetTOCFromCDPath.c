
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ io_object_t ;
typedef int io_iterator_t ;
typedef int UInt8 ;
typedef int CFMutableDictionaryRef ;
typedef int CFDataRef ;
typedef int CDTOC ;


 int CFDataGetBytes (int ,int ,int *) ;
 int CFDataGetLength (int ) ;
 int CFDictionarySetValue (int ,int ,int ) ;
 int CFRangeMake (int ,int ) ;
 int CFRelease (int ) ;
 int CFSTR (int ) ;
 scalar_t__ IOIteratorNext (int ) ;
 int IOObjectRelease (scalar_t__) ;
 int IORegistryEntryCreateCFProperty (scalar_t__,int ,int ,int ) ;
 int IOServiceGetMatchingServices (int ,int ,int *) ;
 int IOServiceMatching (int ) ;
 int kCFAllocatorDefault ;
 int kCFBooleanTrue ;
 int kIOCDMediaClass ;
 int kIOCDMediaTOCKey ;
 int kIOMasterPortDefault ;
 int kIOMediaEjectableKey ;
 int * malloc (int ) ;

__attribute__((used)) static CDTOC * GetTOCFromCDPath(void)
{
 CFMutableDictionaryRef classesToMatch;
 io_iterator_t mediaIterator;
 io_object_t media;
 CDTOC * TOC = ((void*)0);

 classesToMatch = IOServiceMatching(kIOCDMediaClass);
 CFDictionarySetValue(classesToMatch, CFSTR(kIOMediaEjectableKey),
  kCFBooleanTrue);
 IOServiceGetMatchingServices(kIOMasterPortDefault,
  classesToMatch, &mediaIterator);

 media = IOIteratorNext(mediaIterator);

 if(media)
 {
  CFDataRef TOCData = IORegistryEntryCreateCFProperty(media, CFSTR(kIOCDMediaTOCKey), kCFAllocatorDefault, 0);
  TOC = malloc(CFDataGetLength(TOCData));
  CFDataGetBytes(TOCData,CFRangeMake(0,CFDataGetLength(TOCData)),(UInt8 *)TOC);
  CFRelease(TOCData);
  IOObjectRelease(media);
 }

 return TOC;
}
