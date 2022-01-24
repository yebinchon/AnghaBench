#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {char* str; int len; int size; } ;
struct TYPE_8__ {int parent_log_context_offset; int /*<<< orphan*/  (* item_name ) (void*) ;} ;
typedef  TYPE_1__ AVClass ;
typedef  TYPE_2__ AVBPrint ;

/* Variables and functions */
 int AV_BPRINT_SIZE_AUTOMATIC ; 
 int AV_CLASS_CATEGORY_NA ; 
 int AV_LOG_PRINT_LEVEL ; 
 int AV_LOG_QUIET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*,int /*<<< orphan*/ ) ; 
 int flags ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

__attribute__((used)) static void FUNC7(void *avcl, int level, const char *fmt, va_list vl,
                        AVBPrint part[4], int *print_prefix, int type[2])
{
    AVClass* avc = avcl ? *(AVClass **) avcl : NULL;
    FUNC0(part+0, 0, AV_BPRINT_SIZE_AUTOMATIC);
    FUNC0(part+1, 0, AV_BPRINT_SIZE_AUTOMATIC);
    FUNC0(part+2, 0, AV_BPRINT_SIZE_AUTOMATIC);
    FUNC0(part+3, 0, 65536);

    if(type) type[0] = type[1] = AV_CLASS_CATEGORY_NA + 16;
    if (*print_prefix && avc) {
        if (avc->parent_log_context_offset) {
            AVClass** parent = *(AVClass ***) (((uint8_t *) avcl) +
                                   avc->parent_log_context_offset);
            if (parent && *parent) {
                FUNC1(part+0, "[%s @ %p] ",
                         (*parent)->item_name(parent), parent);
                if(type) type[0] = FUNC3(parent);
            }
        }
        FUNC1(part+1, "[%s @ %p] ",
                 avc->item_name(avcl), avcl);
        if(type) type[1] = FUNC3(avcl);
    }

    if (*print_prefix && (level > AV_LOG_QUIET) && (flags & AV_LOG_PRINT_LEVEL))
        FUNC1(part+2, "[%s] ", FUNC4(level));

    FUNC2(part+3, fmt, vl);

    if(*part[0].str || *part[1].str || *part[2].str || *part[3].str) {
        char lastc = part[3].len && part[3].len <= part[3].size ? part[3].str[part[3].len - 1] : 0;
        *print_prefix = lastc == '\n' || lastc == '\r';
    }
}