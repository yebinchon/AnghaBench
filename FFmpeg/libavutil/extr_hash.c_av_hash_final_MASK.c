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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int type; int crc; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ AVHashContext ;

/* Variables and functions */
#define  ADLER32 142 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
#define  CRC32 141 
#define  MD5 140 
#define  MURMUR3 139 
#define  RIPEMD128 138 
#define  RIPEMD160 137 
#define  RIPEMD256 136 
#define  RIPEMD320 135 
#define  SHA160 134 
#define  SHA224 133 
#define  SHA256 132 
#define  SHA384 131 
#define  SHA512 130 
#define  SHA512_224 129 
#define  SHA512_256 128 
 int UINT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(AVHashContext *ctx, uint8_t *dst)
{
    switch (ctx->type) {
    case MD5:     FUNC1(ctx->ctx, dst); break;
    case MURMUR3: FUNC2(ctx->ctx, dst); break;
    case RIPEMD128:
    case RIPEMD160:
    case RIPEMD256:
    case RIPEMD320: FUNC3(ctx->ctx, dst); break;
    case SHA160:
    case SHA224:
    case SHA256:  FUNC5(ctx->ctx, dst); break;
    case SHA512_224:
    case SHA512_256:
    case SHA384:
    case SHA512:  FUNC4(ctx->ctx, dst); break;
    case CRC32:   FUNC0(dst, ctx->crc ^ UINT32_MAX); break;
    case ADLER32: FUNC0(dst, ctx->crc); break;
    }
}