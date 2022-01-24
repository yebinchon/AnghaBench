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
struct sh2lib_handle {int /*<<< orphan*/  http2_sess; } ;
typedef  int /*<<< orphan*/  nghttp2_session_callbacks ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NGHTTP2_FLAG_NONE ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  callback_on_data_chunk_recv ; 
 int /*<<< orphan*/  callback_on_frame_recv ; 
 int /*<<< orphan*/  callback_on_frame_send ; 
 int /*<<< orphan*/  callback_on_header ; 
 int /*<<< orphan*/  callback_on_stream_close ; 
 int /*<<< orphan*/  callback_recv ; 
 int /*<<< orphan*/  callback_send ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sh2lib_handle*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sh2lib_handle *hd)
{
    int ret;
    nghttp2_session_callbacks *callbacks;
    FUNC2(&callbacks);
    FUNC9(callbacks, callback_send);
    FUNC8(callbacks, callback_recv);
    FUNC5(callbacks, callback_on_frame_send);
    FUNC4(callbacks, callback_on_frame_recv);
    FUNC7(callbacks, callback_on_stream_close);
    FUNC3(callbacks, callback_on_data_chunk_recv);
    FUNC6(callbacks, callback_on_header);
    ret = FUNC10(&hd->http2_sess, callbacks, hd);
    if (ret != 0) {
        FUNC0(TAG, "[sh2-connect] New http2 session failed");
        FUNC1(callbacks);
        return -1;
    }
    FUNC1(callbacks);

    /* Create the SETTINGS frame */
    ret = FUNC11(hd->http2_sess, NGHTTP2_FLAG_NONE, NULL, 0);
    if (ret != 0) {
        FUNC0(TAG, "[sh2-connect] Submit settings failed");
        return -1;
    }
    return 0;
}