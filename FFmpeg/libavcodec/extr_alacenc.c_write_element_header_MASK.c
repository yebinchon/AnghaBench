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
typedef  enum AlacRawDataBlockType { ____Placeholder_AlacRawDataBlockType } AlacRawDataBlockType ;
struct TYPE_3__ {scalar_t__ frame_size; int extra_bits; int verbatim; int /*<<< orphan*/  pbctx; } ;
typedef  TYPE_1__ AlacEncodeContext ;

/* Variables and functions */
 scalar_t__ DEFAULT_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC2(AlacEncodeContext *s,
                                 enum AlacRawDataBlockType element,
                                 int instance)
{
    int encode_fs = 0;

    if (s->frame_size < DEFAULT_FRAME_SIZE)
        encode_fs = 1;

    FUNC0(&s->pbctx, 3,  element);               // element type
    FUNC0(&s->pbctx, 4,  instance);              // element instance
    FUNC0(&s->pbctx, 12, 0);                     // unused header bits
    FUNC0(&s->pbctx, 1,  encode_fs);             // Sample count is in the header
    FUNC0(&s->pbctx, 2,  s->extra_bits >> 3);    // Extra bytes (for 24-bit)
    FUNC0(&s->pbctx, 1,  s->verbatim);           // Audio block is verbatim
    if (encode_fs)
        FUNC1(&s->pbctx, s->frame_size);       // No. of samples in the frame
}