#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_51__   TYPE_8__ ;
typedef  struct TYPE_50__   TYPE_7__ ;
typedef  struct TYPE_49__   TYPE_6__ ;
typedef  struct TYPE_48__   TYPE_5__ ;
typedef  struct TYPE_47__   TYPE_4__ ;
typedef  struct TYPE_46__   TYPE_3__ ;
typedef  struct TYPE_45__   TYPE_2__ ;
typedef  struct TYPE_44__   TYPE_1__ ;

/* Type definitions */
struct TYPE_46__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; TYPE_6__* header; } ;
typedef  TYPE_3__ WU_WEBPAGE ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_51__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_50__ {int IsJsonRpc; int WasSstp; scalar_t__ JsonRpcAuthed; void* Type; TYPE_4__* FirstSock; TYPE_2__* Cedar; void* Err; } ;
struct TYPE_49__ {int /*<<< orphan*/  Target; int /*<<< orphan*/  Version; int /*<<< orphan*/  Method; } ;
struct TYPE_48__ {int DisableJsonRpcWebApi; int DisableSSTPServer; scalar_t__ UseWebUI; } ;
struct TYPE_44__ {int* addr; } ;
struct TYPE_47__ {TYPE_1__ RemoteIP; scalar_t__ IsReverseAcceptedSocket; int /*<<< orphan*/  SecureMode; } ;
struct TYPE_45__ {int /*<<< orphan*/  WebUI; TYPE_5__* Server; } ;
typedef  TYPE_4__ SOCK ;
typedef  TYPE_5__ SERVER ;
typedef  TYPE_6__ HTTP_HEADER ;
typedef  TYPE_7__ CONNECTION ;
typedef  TYPE_8__ BUF ;

/* Variables and functions */
 int FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,TYPE_4__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,TYPE_4__*,TYPE_6__*,scalar_t__,int /*<<< orphan*/ ) ; 
 void* CONNECTION_TYPE_ADMIN_RPC ; 
 void* CONNECTION_TYPE_OTHER ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 void* ERR_CLIENT_IS_NOT_VPN ; 
 void* ERR_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 scalar_t__ FUNC9 (TYPE_6__*) ; 
 int FUNC10 () ; 
 scalar_t__ FUNC11 (TYPE_5__*,char*) ; 
 char* HTTP_CONTENT_TYPE3 ; 
 char* HTTP_CONTENT_TYPE5 ; 
 char* HTTP_KEEP_ALIVE ; 
 char* HTTP_PICTURES ; 
 char* HTTP_SAITAMA ; 
 char* HTTP_VPN_TARGET2 ; 
 int /*<<< orphan*/  HTTP_VPN_TARGET_POSTDATA ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*,TYPE_4__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*,TYPE_4__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_7__*,TYPE_4__*,TYPE_6__*,scalar_t__) ; 
 scalar_t__ MAX_WATERMARK_SIZE ; 
 int /*<<< orphan*/ * FUNC18 (scalar_t__) ; 
 TYPE_6__* FUNC19 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC22 (char*) ; 
 int FUNC23 (TYPE_4__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC24 (TYPE_4__*) ; 
 char* SSTP_URI ; 
 int /*<<< orphan*/  Saitama ; 
 int /*<<< orphan*/  FUNC25 () ; 
 scalar_t__ FUNC26 () ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WaterMark ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*) ; 
 TYPE_3__* FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC32(CONNECTION *c, char **error_detail_str)
{
	HTTP_HEADER *h;
	UCHAR *data;
	UINT data_size;
	SOCK *s;
	UINT num = 0, max = 19;
	SERVER *server;
	char *vpn_http_target = HTTP_VPN_TARGET2;
	// Validate arguments
	if (c == NULL)
	{
		return false;
	}

	server = c->Cedar->Server;

	s = c->FirstSock;

	while (true)
	{
		bool not_found_error = false;

		num++;
		if (num > max)
		{
			// Disconnect
			FUNC5(s);
			c->Err = ERR_CLIENT_IS_NOT_VPN;

			*error_detail_str = "HTTP_TOO_MANY_REQUEST";
			return false;
		}
		// Receive a header
		h = FUNC24(s);
		if (h == NULL)
		{
			c->Err = ERR_CLIENT_IS_NOT_VPN;
			if (c->IsJsonRpc)
			{
				c->Err = ERR_DISCONNECTED;
			}
			return false;
		}

		// Interpret
		if (FUNC28(h->Method, "POST") == 0)
		{
			// Receive the data since it's POST
			data_size = FUNC9(h);

			if (server->DisableJsonRpcWebApi == false)
			{
				if (FUNC28(h->Target, "/api") == 0 || FUNC28(h->Target, "/api/") == 0)
				{
					c->IsJsonRpc = true;
					c->Type = CONNECTION_TYPE_ADMIN_RPC;

					FUNC17(c, s, h, data_size);

					FUNC8(h);

					if (c->JsonRpcAuthed)
					{
						num = 0;
					}

					continue;
				}
				else if (FUNC27(h->Target, "/admin"))
				{
					c->IsJsonRpc = true;
					c->Type = CONNECTION_TYPE_ADMIN_RPC;

					FUNC3(c, s, h, data_size, h->Target);

					FUNC8(h);

					if (c->JsonRpcAuthed)
					{
						num = 0;
					}

					continue;
				}
			}

			if ((data_size > MAX_WATERMARK_SIZE || data_size < FUNC26()) && (data_size != FUNC29(HTTP_VPN_TARGET_POSTDATA)))
			{
				// Data is too large
				FUNC12(s, h->Target, NULL);
				FUNC8(h);
				c->Err = ERR_CLIENT_IS_NOT_VPN;
				*error_detail_str = "POST_Recv_TooLong";
				return false;
			}
			data = FUNC18(data_size);
			if (FUNC23(s, data, data_size, s->SecureMode) == false)
			{
				// Data reception failure
				FUNC6(data);
				FUNC8(h);
				c->Err = ERR_DISCONNECTED;
				*error_detail_str = "POST_Recv_Failed";
				return false;
			}
			// Check the Target
			if ((FUNC28(h->Target, vpn_http_target) != 0) || not_found_error)
			{
				// Target is invalid
				FUNC13(s, h->Target);
				FUNC6(data);
				FUNC8(h);
				*error_detail_str = "POST_Target_Wrong";
			}
			else
			{
				// Compare posted data with the WaterMark
				if ((data_size == FUNC29(HTTP_VPN_TARGET_POSTDATA) && (FUNC4(data, HTTP_VPN_TARGET_POSTDATA, data_size) == 0))
					|| ((data_size >= FUNC26()) && FUNC4(data, WaterMark, FUNC26()) == 0))
				{
					// Check the WaterMark
					FUNC6(data);
					FUNC8(h);
					return true;
				}
				else
				{
					// WaterMark is incorrect
					FUNC12(s, h->Target, NULL);
					FUNC8(h);
					*error_detail_str = "POST_WaterMark_Error";
				}
			}
		}
		else if (FUNC28(h->Method, "OPTIONS") == 0)
		{
			if (server->DisableJsonRpcWebApi == false)
			{
				if (FUNC28(h->Target, "/api") == 0 || FUNC28(h->Target, "/api/") == 0 || FUNC27(h->Target, "/admin"))
				{
					c->IsJsonRpc = true;
					c->Type = CONNECTION_TYPE_ADMIN_RPC;

					FUNC16(c, s, h, h->Target);

					FUNC8(h);

					num = 0;

					continue;
				}
			}
		}
		else if (FUNC28(h->Method, "SSTP_DUPLEX_POST") == 0 && (server->DisableSSTPServer == false || s->IsReverseAcceptedSocket
			) &&
			FUNC11(server, "b_support_sstp") && FUNC10() == false)
		{
			// SSTP client is connected
			c->WasSstp = true;

			if (FUNC28(h->Target, SSTP_URI) == 0)
			{
				bool sstp_ret;
				// Accept the SSTP connection
				c->Type = CONNECTION_TYPE_OTHER;

				sstp_ret = FUNC0(c);

				c->Err = ERR_DISCONNECTED;
				FUNC8(h);

				if (sstp_ret)
				{
					*error_detail_str = "";
				}
				else
				{
					*error_detail_str = "SSTP_ABORT";
				}

				return false;
			}
			else
			{
				// URI is invalid
				FUNC13(s, h->Target);
				*error_detail_str = "SSTP_URL_WRONG";
			}

			FUNC8(h);
		}
		else
		{
			// This should not be a VPN client, but interpret a bit more
			if (FUNC28(h->Method, "GET") != 0 && FUNC28(h->Method, "HEAD") != 0
				 && FUNC28(h->Method, "POST") != 0)
			{
				// Unsupported method calls
				FUNC14(s, h->Method, h->Target, h->Version);
				*error_detail_str = "HTTP_BAD_METHOD";
			}
			else
			{

				if (FUNC28(h->Target, "/") == 0)
				{
					// Root directory
					*error_detail_str = "HTTP_ROOT";

					{
						// Other than free version
						FUNC12(c->FirstSock, h->Target, "");
					}
				}
				else
				{
					bool b = false;

					// Show the WebUI if the configuration allow to use the WebUI
					if (c->Cedar->Server != NULL && c->Cedar->Server->UseWebUI)
					{
						WU_WEBPAGE *page;

						// Show the WebUI
						page = FUNC31(h->Target, c->Cedar->WebUI);

						if (page != NULL)
						{
							FUNC21(s, page->header, page->data, page->size);
							b = true;
							FUNC30(page);
						}

					}

					if (c->FirstSock->RemoteIP.addr[0] == 127)
					{
						if (FUNC28(h->Target, HTTP_SAITAMA) == 0)
						{
							// Saitama (joke)
							FUNC8(h);
							h = FUNC19("HTTP/1.1", "202", "OK");
							FUNC1(h, FUNC20("Content-Type", HTTP_CONTENT_TYPE3));
							FUNC1(h, FUNC20("Connection", "Keep-Alive"));
							FUNC1(h, FUNC20("Keep-Alive", HTTP_KEEP_ALIVE));
							FUNC21(s, h, Saitama, FUNC25());
							b = true;
						}
						else if (FUNC27(h->Target, HTTP_PICTURES))
						{
							BUF *buf;

							// Lots of photos
							buf = FUNC22("|Pictures.mht");

							if (buf != NULL)
							{
								FUNC8(h);
								h = FUNC19("HTTP/1.1", "202", "OK");
								FUNC1(h, FUNC20("Content-Type", HTTP_CONTENT_TYPE5));
								FUNC1(h, FUNC20("Connection", "Keep-Alive"));
								FUNC1(h, FUNC20("Keep-Alive", HTTP_KEEP_ALIVE));
								FUNC21(s, h, buf->Buf, buf->Size);
								b = true;

								FUNC7(buf);
							}
						}
					}

					if (b == false)
					{
						if (server->DisableJsonRpcWebApi == false)
						{
							if (FUNC27(h->Target, "/api?") || FUNC27(h->Target, "/api/") || FUNC28(h->Target, "/api") == 0)
							{
								c->IsJsonRpc = true;
								c->Type = CONNECTION_TYPE_ADMIN_RPC;

								FUNC15(c, s, h, h->Target);

								if (c->JsonRpcAuthed)
								{
									num = 0;
								}

								FUNC8(h);

								continue;
							}
							else if (FUNC27(h->Target, "/admin"))
							{
								c->IsJsonRpc = true;
								c->Type = CONNECTION_TYPE_ADMIN_RPC;

								FUNC2(c, s, h, h->Target);

								if (c->JsonRpcAuthed)
								{
									num = 0;
								}

								FUNC8(h);

								continue;
							}
						}
					}

					if (b == false)
					{
						// Not Found
						FUNC13(s, h->Target);

						*error_detail_str = "HTTP_NOT_FOUND";
					}
				}
			}
			FUNC8(h);
		}
	}
}