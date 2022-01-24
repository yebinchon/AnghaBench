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
struct sh2lib_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP2_PUT_PATH ; 
 int /*<<< orphan*/  HTTP2_SERVER_URI ; 
 int /*<<< orphan*/  HTTP2_STREAMING_GET_PATH ; 
 int /*<<< orphan*/  handle_echo_response ; 
 int /*<<< orphan*/  handle_get_response ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  send_put_data ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct sh2lib_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sh2lib_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sh2lib_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sh2lib_handle*) ; 
 int /*<<< orphan*/  FUNC6 (struct sh2lib_handle*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void *args)
{
    /* Set current time: proper system time is required for TLS based
     * certificate verification.
     */
    FUNC1();

    /* HTTP2: one connection multiple requests. Do the TLS/TCP connection first */
    FUNC0("Connecting to server\n");
    struct sh2lib_handle hd;
    if (FUNC2(&hd, HTTP2_SERVER_URI) != 0) {
        FUNC0("Failed to connect\n");
        FUNC8(NULL);
        return;
    }
    FUNC0("Connection done\n");

    /* HTTP GET  */
    FUNC3(&hd, HTTP2_STREAMING_GET_PATH, handle_get_response);

    /* HTTP PUT  */
    FUNC4(&hd, HTTP2_PUT_PATH, send_put_data, handle_echo_response);

    while (1) {
        /* Process HTTP2 send/receive */
        if (FUNC5(&hd) < 0) {
            FUNC0("Error in send/receive\n");
            break;
        }
        FUNC7(2);
    }

    FUNC6(&hd);
    FUNC8(NULL);
}