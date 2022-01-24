#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint64_t ;
typedef  int uint32_t ;
struct AVDES {int dummy; } ;
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {unsigned int k_size; int rid; int /*<<< orphan*/  r_val; } ;
typedef  TYPE_1__ OMAContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENOMEM ; 
 unsigned int OMA_ENC_HEADER_SIZE ; 
 struct AVDES* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct AVDES*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct AVDES*,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct AVDES*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s, uint8_t *enc_header, unsigned size,
                  const uint8_t *n_val)
{
    OMAContext *oc = s->priv_data;
    uint64_t pos;
    uint32_t taglen, datalen;
    struct AVDES *av_des;

    if (!enc_header || !n_val ||
        size < OMA_ENC_HEADER_SIZE + oc->k_size + 4)
        return -1;

    pos = OMA_ENC_HEADER_SIZE + oc->k_size;
    if (!FUNC8(&enc_header[pos], "EKB ", 4))
        pos += 32;

    if (size < pos + 44)
        return -1;

    if (FUNC1(&enc_header[pos]) != oc->rid)
        FUNC6(s, AV_LOG_DEBUG, "Mismatching RID\n");

    taglen  = FUNC1(&enc_header[pos + 32]);
    datalen = FUNC1(&enc_header[pos + 36]) >> 4;

    pos += 44LL + taglen;

    if (pos + (((uint64_t)datalen) << 4) > size)
        return -1;

    av_des = FUNC2();
    if (!av_des)
        return FUNC0(ENOMEM);

    FUNC4(av_des, n_val, 192, 1);
    while (datalen-- > 0) {
        FUNC3(av_des, oc->r_val, &enc_header[pos], 2, NULL, 1);
        FUNC7(s, oc->r_val, NULL, 16);
        if (!FUNC9(s, enc_header, size, oc->r_val)) {
            FUNC5(av_des);
            return 0;
        }
        pos += 16;
    }

    FUNC5(av_des);
    return -1;
}