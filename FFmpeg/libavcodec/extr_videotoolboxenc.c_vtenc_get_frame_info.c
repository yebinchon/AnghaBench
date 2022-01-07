
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMSampleBufferRef ;
typedef int CFIndex ;
typedef int CFDictionaryRef ;
typedef int CFBooleanRef ;
typedef int CFArrayRef ;


 int CFArrayGetCount (int ) ;
 int CFArrayGetValueAtIndex (int ,int ) ;
 int CFBooleanGetValue (int ) ;
 scalar_t__ CFDictionaryGetValueIfPresent (int ,int ,void const**) ;
 int CMSampleBufferGetSampleAttachmentsArray (int ,int) ;
 int kCMSampleAttachmentKey_NotSync ;

__attribute__((used)) static void vtenc_get_frame_info(CMSampleBufferRef buffer, bool *is_key_frame)
{
    CFArrayRef attachments;
    CFDictionaryRef attachment;
    CFBooleanRef not_sync;
    CFIndex len;

    attachments = CMSampleBufferGetSampleAttachmentsArray(buffer, 0);
    len = !attachments ? 0 : CFArrayGetCount(attachments);

    if (!len) {
        *is_key_frame = 1;
        return;
    }

    attachment = CFArrayGetValueAtIndex(attachments, 0);

    if (CFDictionaryGetValueIfPresent(attachment,
                                      kCMSampleAttachmentKey_NotSync,
                                      (const void **)&not_sync))
    {
        *is_key_frame = !CFBooleanGetValue(not_sync);
    } else {
        *is_key_frame = 1;
    }
}
