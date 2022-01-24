#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int type; int /*<<< orphan*/  ctx; int /*<<< orphan*/  crctab; } ;
typedef  TYPE_1__ AVHashContext ;

/* Variables and functions */
#define  ADLER32 142 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_CRC_32_IEEE_LE ; 
#define  CRC32 141 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
#define  MD5 140 
#define  MURMUR3 139 
 int NUM_HASHES ; 
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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_2__* hashdesc ; 

int FUNC10(AVHashContext **ctx, const char *name)
{
    AVHashContext *res;
    int i;
    *ctx = NULL;
    for (i = 0; i < NUM_HASHES; i++)
        if (FUNC9(name, hashdesc[i].name) == 0)
            break;
    if (i >= NUM_HASHES) return FUNC0(EINVAL);
    res = FUNC3(sizeof(*res));
    if (!res) return FUNC0(ENOMEM);
    res->type = i;
    switch (i) {
    case MD5:     res->ctx = FUNC4(); break;
    case MURMUR3: res->ctx = FUNC5(); break;
    case RIPEMD128:
    case RIPEMD160:
    case RIPEMD256:
    case RIPEMD320: res->ctx = FUNC6(); break;
    case SHA160:
    case SHA224:
    case SHA256:  res->ctx = FUNC8(); break;
    case SHA512_224:
    case SHA512_256:
    case SHA384:
    case SHA512:  res->ctx = FUNC7(); break;
    case CRC32:   res->crctab = FUNC1(AV_CRC_32_IEEE_LE); break;
    case ADLER32: break;
    }
    if (i != ADLER32 && i != CRC32 && !res->ctx) {
        FUNC2(res);
        return FUNC0(ENOMEM);
    }
    *ctx = res;
    return 0;
}