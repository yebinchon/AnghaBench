#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  ip_str ;
typedef  int UINT ;
struct TYPE_12__ {int Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_11__ {int /*<<< orphan*/  RemoteIP; } ;
typedef  TYPE_1__ SOCK ;
typedef  int /*<<< orphan*/  HTTP_HEADER ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 char* DEFAULT_USER_AGENT ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 char* HTTP_KEEP_ALIVE ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int FUNC9 (int,int) ; 
 void* FUNC10 (int) ; 
 TYPE_2__* FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int FUNC14 (TYPE_1__*,void*,int,int) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,void*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,int) ; 
 int /*<<< orphan*/  http_detect_server_startwith ; 
 int /*<<< orphan*/  http_detect_server_tag_future ; 

bool FUNC22(SOCK *s)
{
	HTTP_HEADER *h;
	char ip_str[MAX_SIZE];
	char *send_str;
	UINT content_len;
	BUF *recv_buf;
	void *socket_buffer;
	UINT socket_buffer_size = 32768;
	bool ok = false;
	// Validate arguments
	if (s == NULL)
	{
		return false;
	}

	FUNC7(ip_str, sizeof(ip_str), &s->RemoteIP);

	// Request generation
	h = FUNC12("GET", "/", "HTTP/1.1", true);
	FUNC0(h, FUNC13("X-VPN", "1"));
	FUNC0(h, FUNC13("Host", ip_str));
	FUNC0(h, FUNC13("Keep-Alive", HTTP_KEEP_ALIVE));
	FUNC0(h, FUNC13("Connection", "Keep-Alive"));
	FUNC0(h, FUNC13("Accept-Language", "ja"));
	FUNC0(h, FUNC13("User-Agent", DEFAULT_USER_AGENT));
	FUNC0(h, FUNC13("Pragma", "no-cache"));
	FUNC0(h, FUNC13("Cache-Control", "no-cache"));



	send_str = FUNC6(h);
	FUNC4(h);

	// Transmission
	if (FUNC17(s, send_str, FUNC19(send_str), true) == false)
	{
		FUNC2(send_str);
		return false;
	}

	FUNC2(send_str);

	// Receive
	h = FUNC15(s);
	if (h == NULL)
	{
		return false;
	}

	// Get the length of the content
	content_len = FUNC5(h);
	FUNC4(h);

	if (content_len == 0 || content_len >= (1024 * 1024))
	{
		return false;
	}

	// Receive contents
	recv_buf = FUNC11();
	socket_buffer = FUNC10(socket_buffer_size);

	while (true)
	{
		UINT recvsize = FUNC9(socket_buffer_size, content_len - recv_buf->Size);
		UINT size;

		if (recvsize == 0)
		{
			ok = true;
			break;
		}

		size = FUNC14(s, socket_buffer, recvsize, true);
		if (size == 0)
		{
			// Disconnected
			break;
		}

		FUNC20(recv_buf, socket_buffer, size);
	}

	FUNC16(recv_buf, 0, 0);
	FUNC2(socket_buffer);

	if (ok)
	{
		// Examine to confirm whether the incoming data is a SoftEther VPN protocol
		char tmp[1024];

		FUNC21(tmp, sizeof(tmp));

		FUNC1(tmp, recv_buf->Buf, FUNC9(recv_buf->Size, (sizeof(tmp) - 1)));

		ok = false;

		if (FUNC18(tmp, http_detect_server_startwith))
		{
			ok = true;
		}
		else if (FUNC8(tmp, http_detect_server_tag_future))
		{
			ok = true;
		}
	}

	FUNC3(recv_buf);

	return ok;
}