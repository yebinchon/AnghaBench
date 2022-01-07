
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CFStringRef ;
typedef scalar_t__ CFIndex ;
typedef int CFDictionaryRef ;
typedef int CFArrayRef ;


 scalar_t__ CFArrayGetCount (int ) ;
 int CFArrayGetValueAtIndex (int ,scalar_t__) ;
 int CFDictionaryGetValue (int ,int ) ;
 scalar_t__ CFEqual (int ,int ) ;
 int CFRelease (int ) ;
 int VTCopyVideoEncoderList (int *,int *) ;
 int kVTVideoEncoderSpecification_EncoderID ;

int encvt_available(CFStringRef encoder)
{
    CFArrayRef encoder_list;
    VTCopyVideoEncoderList(((void*)0), &encoder_list);
    CFIndex size = CFArrayGetCount(encoder_list);

    for (CFIndex i = 0; i < size; i++ )
    {
        CFDictionaryRef encoder_dict = CFArrayGetValueAtIndex(encoder_list, i);
        CFStringRef encoder_id = CFDictionaryGetValue(encoder_dict, kVTVideoEncoderSpecification_EncoderID);
        if (CFEqual(encoder_id, encoder))
        {
            CFRelease(encoder_list);
            return 1;
        }
    }
    CFRelease(encoder_list);
    return 0;
}
