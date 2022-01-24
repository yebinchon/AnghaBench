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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  PutByteContext ;
typedef  int /*<<< orphan*/  H264ParamSets ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_EF_EXPLODE ; 
 int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ERANGE ; 
 int INT16_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  const* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int,void*) ; 

__attribute__((used)) static int FUNC15(const uint8_t *buf, int buf_size, H264ParamSets *ps,
                                   int err_recognition, void *logctx)
{
    int ret;

    ret = FUNC14(buf, buf_size, ps, 1, logctx);
    if (ret < 0 && !(err_recognition & AV_EF_EXPLODE)) {
        GetByteContext gbc;
        PutByteContext pbc;
        uint8_t *escaped_buf;
        int escaped_buf_size;

        FUNC3(logctx, AV_LOG_WARNING,
               "SPS decoding failure, trying again after escaping the NAL\n");

        if (buf_size / 2 >= (INT16_MAX - AV_INPUT_BUFFER_PADDING_SIZE) / 3)
            return FUNC0(ERANGE);
        escaped_buf_size = buf_size * 3 / 2 + AV_INPUT_BUFFER_PADDING_SIZE;
        escaped_buf = FUNC4(escaped_buf_size);
        if (!escaped_buf)
            return FUNC0(ENOMEM);

        FUNC7(&gbc, buf, buf_size);
        FUNC8(&pbc, escaped_buf, escaped_buf_size);

        while (FUNC6(&gbc)) {
            if (FUNC6(&gbc) >= 3 &&
                FUNC9(&gbc) <= 3) {
                FUNC10(&pbc, 3);
                FUNC12(&gbc, 2);
            } else
                FUNC11(&pbc, FUNC5(&gbc));
        }

        escaped_buf_size = FUNC13(&pbc);
        FUNC1(escaped_buf, escaped_buf_size - 2);

        (void)FUNC14(escaped_buf, escaped_buf_size, ps, 1, logctx);
        // lorex.mp4 decodes ok even with extradata decoding failing
        FUNC2(&escaped_buf);
    }

    return 0;
}