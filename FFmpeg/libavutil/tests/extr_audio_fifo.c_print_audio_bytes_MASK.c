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
typedef  int uint8_t ;
struct TYPE_3__ {int nb_ch; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ TestStruct ;

/* Variables and functions */
 int /*<<< orphan*/  HAVE_BIGENDIAN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

__attribute__((used)) static void FUNC4(const TestStruct *test_sample, void **data_planes, int nb_samples)
{
    int p, b, f;
    int byte_offset      = FUNC0(test_sample->format);
    int buffers          = FUNC1(test_sample->format)
                                         ? test_sample->nb_ch : 1;
    int line_size        = (buffers > 1) ? nb_samples * byte_offset
                                         : nb_samples * byte_offset * test_sample->nb_ch;
    for (p = 0; p < buffers; ++p){
        for(b = 0; b < line_size; b+=byte_offset){
            for (f = 0; f < byte_offset; f++){
                int order = !HAVE_BIGENDIAN ? (byte_offset - f - 1) : f;
                FUNC2("%02x", *((uint8_t*)data_planes[p] + b + order));
            }
            FUNC3(' ');
        }
        FUNC3('\n');
    }
}