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
struct TYPE_3__ {int type; int crc; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ AVHashContext ;

/* Variables and functions */
#define  ADLER32 142 
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

void FUNC5(AVHashContext *ctx)
{
    switch (ctx->type) {
    case MD5:     FUNC0(ctx->ctx); break;
    case MURMUR3: FUNC1(ctx->ctx); break;
    case RIPEMD128: FUNC2(ctx->ctx, 128); break;
    case RIPEMD160: FUNC2(ctx->ctx, 160); break;
    case RIPEMD256: FUNC2(ctx->ctx, 256); break;
    case RIPEMD320: FUNC2(ctx->ctx, 320); break;
    case SHA160:  FUNC4(ctx->ctx, 160); break;
    case SHA224:  FUNC4(ctx->ctx, 224); break;
    case SHA256:  FUNC4(ctx->ctx, 256); break;
    case SHA512_224:  FUNC3(ctx->ctx, 224); break;
    case SHA512_256:  FUNC3(ctx->ctx, 256); break;
    case SHA384:  FUNC3(ctx->ctx, 384); break;
    case SHA512:  FUNC3(ctx->ctx, 512); break;
    case CRC32:   ctx->crc = UINT32_MAX; break;
    case ADLER32: ctx->crc = 1; break;
    }
}