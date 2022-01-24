#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVMatrixEncoding { ____Placeholder_AVMatrixEncoding } AVMatrixEncoding ;
struct TYPE_3__ {int size; scalar_t__ data; } ;
typedef  TYPE_1__ AVFrameSideData ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
#define  AV_MATRIX_ENCODING_DOLBY 134 
#define  AV_MATRIX_ENCODING_DOLBYEX 133 
#define  AV_MATRIX_ENCODING_DOLBYHEADPHONE 132 
#define  AV_MATRIX_ENCODING_DPLII 131 
#define  AV_MATRIX_ENCODING_DPLIIX 130 
#define  AV_MATRIX_ENCODING_DPLIIZ 129 
#define  AV_MATRIX_ENCODING_NONE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC1(AVFilterContext *ctx, AVFrameSideData *sd)
{
    enum AVMatrixEncoding enc;

    FUNC0(ctx, AV_LOG_INFO, "matrix encoding: ");

    if (sd->size < sizeof(enum AVMatrixEncoding)) {
        FUNC0(ctx, AV_LOG_INFO, "invalid data");
        return;
    }

    enc = *(enum AVMatrixEncoding *)sd->data;
    switch (enc) {
    case AV_MATRIX_ENCODING_NONE:           FUNC0(ctx, AV_LOG_INFO, "none");                break;
    case AV_MATRIX_ENCODING_DOLBY:          FUNC0(ctx, AV_LOG_INFO, "Dolby Surround");      break;
    case AV_MATRIX_ENCODING_DPLII:          FUNC0(ctx, AV_LOG_INFO, "Dolby Pro Logic II");  break;
    case AV_MATRIX_ENCODING_DPLIIX:         FUNC0(ctx, AV_LOG_INFO, "Dolby Pro Logic IIx"); break;
    case AV_MATRIX_ENCODING_DPLIIZ:         FUNC0(ctx, AV_LOG_INFO, "Dolby Pro Logic IIz"); break;
    case AV_MATRIX_ENCODING_DOLBYEX:        FUNC0(ctx, AV_LOG_INFO, "Dolby EX");            break;
    case AV_MATRIX_ENCODING_DOLBYHEADPHONE: FUNC0(ctx, AV_LOG_INFO, "Dolby Headphone");     break;
    default:                                FUNC0(ctx, AV_LOG_WARNING, "unknown");          break;
    }
}