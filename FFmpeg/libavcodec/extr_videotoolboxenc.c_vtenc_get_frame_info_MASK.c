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
typedef  int /*<<< orphan*/  CMSampleBufferRef ;
typedef  int /*<<< orphan*/  CFIndex ;
typedef  int /*<<< orphan*/  CFDictionaryRef ;
typedef  int /*<<< orphan*/  CFBooleanRef ;
typedef  int /*<<< orphan*/  CFArrayRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  kCMSampleAttachmentKey_NotSync ; 

__attribute__((used)) static void FUNC5(CMSampleBufferRef buffer, bool *is_key_frame)
{
    CFArrayRef      attachments;
    CFDictionaryRef attachment;
    CFBooleanRef    not_sync;
    CFIndex         len;

    attachments = FUNC4(buffer, false);
    len = !attachments ? 0 : FUNC0(attachments);

    if (!len) {
        *is_key_frame = true;
        return;
    }

    attachment = FUNC1(attachments, 0);

    if (FUNC3(attachment,
                                      kCMSampleAttachmentKey_NotSync,
                                      (const void **)&not_sync))
    {
        *is_key_frame = !FUNC2(not_sync);
    } else {
        *is_key_frame = true;
    }
}