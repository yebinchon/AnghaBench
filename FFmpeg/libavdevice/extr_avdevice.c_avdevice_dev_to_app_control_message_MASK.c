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
struct AVFormatContext {int (* control_message_cb ) (struct AVFormatContext*,int,void*,size_t) ;} ;
typedef  enum AVDevToAppMessageType { ____Placeholder_AVDevToAppMessageType } AVDevToAppMessageType ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSYS ; 
 int FUNC1 (struct AVFormatContext*,int,void*,size_t) ; 

int FUNC2(struct AVFormatContext *s, enum AVDevToAppMessageType type,
                                        void *data, size_t data_size)
{
    if (!s->control_message_cb)
        return FUNC0(ENOSYS);
    return s->control_message_cb(s, type, data, data_size);
}