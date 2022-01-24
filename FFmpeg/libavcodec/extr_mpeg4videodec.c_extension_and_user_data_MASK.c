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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  MpegEncContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 scalar_t__ EXT_STARTCODE ; 
 scalar_t__ QUANT_MATRIX_EXT_ID ; 
 scalar_t__ USER_DATA_STARTCODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(MpegEncContext *s, GetBitContext *gb, int id)
{
    uint32_t startcode;
    uint8_t extension_type;

    startcode = FUNC2(gb, 32);
    if (startcode == USER_DATA_STARTCODE || startcode == EXT_STARTCODE) {

        if ((id == 2 || id == 4) && startcode == EXT_STARTCODE) {
            FUNC3(gb, 32);
            extension_type = FUNC0(gb, 4);
            if (extension_type == QUANT_MATRIX_EXT_ID)
                FUNC1(s, gb);
        }
    }
}