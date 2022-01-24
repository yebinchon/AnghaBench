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
typedef  enum AVColorTransferCharacteristic { ____Placeholder_AVColorTransferCharacteristic } AVColorTransferCharacteristic ;
typedef  int /*<<< orphan*/  WriterContext ;

/* Variables and functions */
 int AVCOL_TRC_UNSPECIFIED ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(WriterContext *w, enum AVColorTransferCharacteristic color_trc)
{
    const char *val = FUNC0(color_trc);
    if (!val || color_trc == AVCOL_TRC_UNSPECIFIED) {
        FUNC2("color_transfer", "unknown");
    } else {
        FUNC1("color_transfer", val);
    }
}