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
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const*) ; 
 scalar_t__ DIRAC_DATA_UNIT_HEADER_SIZE ; 
#define  DIRAC_PCODE_AUX 132 
#define  DIRAC_PCODE_END_SEQ 131 
#define  DIRAC_PCODE_PAD 130 
#define  DIRAC_PCODE_PICTURE_HQ 129 
#define  DIRAC_PCODE_SEQ_HEADER 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const*,scalar_t__,int) ; 

void FUNC4(AVFormatContext *ctx, const uint8_t *frame_buf, int frame_size, int interlaced)
{
    const uint8_t *end = frame_buf + frame_size;
    const uint8_t *unit = frame_buf;
    uint8_t parse_code;
    uint32_t unit_size;

    while (unit < end) {
        parse_code = unit[4];
        unit_size = FUNC0(&unit[5]);

        switch (parse_code) {
        /* sequence header */
        /* end of sequence */
        case DIRAC_PCODE_SEQ_HEADER:
        case DIRAC_PCODE_END_SEQ:
            FUNC2(ctx, parse_code, 0, unit + DIRAC_DATA_UNIT_HEADER_SIZE, unit_size - DIRAC_DATA_UNIT_HEADER_SIZE, 0, 0, 0);
            break;
        /* HQ picture */
        case DIRAC_PCODE_PICTURE_HQ:
            FUNC3(ctx, unit + DIRAC_DATA_UNIT_HEADER_SIZE, unit_size - DIRAC_DATA_UNIT_HEADER_SIZE, interlaced);
            break;
        /* parse codes without specification */
        case DIRAC_PCODE_AUX:
        case DIRAC_PCODE_PAD:
            break;
        default:
            FUNC1(ctx, "VC-2 parse code %d", parse_code);
            break;
        }
        unit += unit_size;
    }
}