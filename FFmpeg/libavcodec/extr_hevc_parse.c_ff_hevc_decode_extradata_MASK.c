#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_8__ {int const* buffer; } ;
typedef  int /*<<< orphan*/  HEVCSEI ;
typedef  int /*<<< orphan*/  HEVCParamSets ;
typedef  TYPE_1__ GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int const*,int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (int const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int,void*) ; 

int FUNC8(const uint8_t *data, int size, HEVCParamSets *ps,
                             HEVCSEI *sei, int *is_nalff, int *nal_length_size,
                             int err_recognition, int apply_defdispwin, void *logctx)
{
    int ret = 0;
    GetByteContext gb;

    FUNC4(&gb, data, size);

    if (size > 3 && (data[0] || data[1] || data[2] > 1)) {
        /* It seems the extradata is encoded as hvcC format.
         * Temporarily, we support configurationVersion==0 until 14496-15 3rd
         * is finalized. When finalized, configurationVersion will be 1 and we
         * can recognize hvcC by checking if avctx->extradata[0]==1 or not. */
        int i, j, num_arrays, nal_len_size;

        *is_nalff = 1;

        FUNC6(&gb, 21);
        nal_len_size = (FUNC2(&gb) & 3) + 1;
        num_arrays   = FUNC2(&gb);

        /* nal units in the hvcC always have length coded with 2 bytes,
         * so put a fake nal_length_size = 2 while parsing them */
        *nal_length_size = 2;

        /* Decode nal units from hvcC. */
        for (i = 0; i < num_arrays; i++) {
            int type = FUNC2(&gb) & 0x3f;
            int cnt  = FUNC1(&gb);

            for (j = 0; j < cnt; j++) {
                // +2 for the nal size field
                int nalsize = FUNC5(&gb) + 2;
                if (FUNC3(&gb) < nalsize) {
                    FUNC0(logctx, AV_LOG_ERROR,
                           "Invalid NAL unit size in extradata.\n");
                    return AVERROR_INVALIDDATA;
                }

                ret = FUNC7(gb.buffer, nalsize, ps, sei, *is_nalff,
                                            *nal_length_size, err_recognition, apply_defdispwin,
                                            logctx);
                if (ret < 0) {
                    FUNC0(logctx, AV_LOG_ERROR,
                           "Decoding nal unit %d %d from hvcC failed\n",
                           type, i);
                    return ret;
                }
                FUNC6(&gb, nalsize);
            }
        }

        /* Now store right nal length size, that will be used to parse
         * all other nals */
        *nal_length_size = nal_len_size;
    } else {
        *is_nalff = 0;
        ret = FUNC7(data, size, ps, sei, *is_nalff, *nal_length_size,
                                    err_recognition, apply_defdispwin, logctx);
        if (ret < 0)
            return ret;
    }

    return ret;
}