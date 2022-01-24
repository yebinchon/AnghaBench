#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_4__ {int codec_type; scalar_t__ enc_name; } ;
typedef  TYPE_1__ RTPDynamicProtocolHandler ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,scalar_t__) ; 
 TYPE_1__* FUNC1 (void**) ; 

const RTPDynamicProtocolHandler *FUNC2(const char *name,
                                                       enum AVMediaType codec_type)
{
    void *i = 0;
    const RTPDynamicProtocolHandler *handler;
    while ((handler = FUNC1(&i))) {
        if (handler->enc_name &&
            !FUNC0(name, handler->enc_name) &&
            codec_type == handler->codec_type)
            return handler;
    }
    return NULL;
}