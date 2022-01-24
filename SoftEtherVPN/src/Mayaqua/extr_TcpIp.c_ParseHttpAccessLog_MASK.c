#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  h ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_17__ {char* Method; char* Path; char* Protocol; char* Hostname; char* Referer; char* UserAgent; int /*<<< orphan*/  Port; } ;
struct TYPE_14__ {TYPE_1__* TCPHeader; } ;
struct TYPE_16__ {int PayloadSize; TYPE_2__ L4; int /*<<< orphan*/ * Payload; } ;
struct TYPE_15__ {int NumTokens; char** Token; } ;
struct TYPE_13__ {int /*<<< orphan*/  DstPort; } ;
typedef  TYPE_3__ TOKEN_LIST ;
typedef  TYPE_4__ PKT ;
typedef  TYPE_5__ HTTPLOG ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC1 (TYPE_5__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int INFINITE ; 
 int FUNC7 (char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 TYPE_3__* FUNC9 (char*,char*) ; 
 int FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,int) ; 

HTTPLOG *FUNC18(PKT *pkt)
{
	HTTPLOG h;
	UCHAR *buf;
	UINT size;
	BUF *b;
	char *line1;
	bool ok = false;
	// Validate arguments
	if (pkt == NULL)
	{
		return NULL;
	}

	buf = pkt->Payload;
	size = pkt->PayloadSize;

	if (size <= 5)
	{
		return NULL;
	}

	// Check whether it starts with the HTTP-specific string
	if (FUNC2(buf, "GET ", 4) != 0 &&
		FUNC2(buf, "HEAD ", 5) != 0 &&
		FUNC2(buf, "POST ", 5) != 0)
	{
		return NULL;
	}

	FUNC17(&h, sizeof(h));

	h.Port = FUNC3(pkt->L4.TCPHeader->DstPort);

	b = FUNC8();
	FUNC16(b, buf, size);
	FUNC11(b, 0, 0);

	line1 = FUNC0(b);

	if (line1 != NULL)
	{
		TOKEN_LIST *tokens = FUNC9(line1, " \t");
		if (tokens != NULL)
		{
			if (tokens->NumTokens == 3)
			{
				FUNC13(h.Method, sizeof(h.Hostname), tokens->Token[0]);
				FUNC15(h.Method);

				FUNC13(h.Path, sizeof(h.Path), tokens->Token[1]);
				FUNC15(h.Path);

				FUNC13(h.Protocol, sizeof(h.Protocol), tokens->Token[2]);
				FUNC15(h.Protocol);

				FUNC14(h.Method);

				while (true)
				{
					char *line = FUNC0(b);
					UINT i;

					if (line == NULL)
					{
						break;
					}

					i = FUNC10(line, ":", 0);
					if (i != INFINITE && i < (MAX_SIZE / 2))
					{
						char name[MAX_SIZE];
						char value[MAX_SIZE];

						FUNC13(name, sizeof(name), line);
						name[i] = 0;
						FUNC15(name);

						FUNC13(value, sizeof(value), line + i + 1);
						FUNC15(value);

						if (FUNC12(name, "host") == 0)
						{
							FUNC13(h.Hostname, sizeof(h.Hostname), value);
						}
						else if (FUNC12(name, "referer") == 0)
						{
							FUNC13(h.Referer, sizeof(h.Referer), value);
						}
						else if (FUNC12(name, "user-agent") == 0)
						{
							FUNC13(h.UserAgent, sizeof(h.UserAgent), value);
						}
					}

					FUNC4(line);
				}

				if (FUNC7(h.Hostname) == false)
				{
					ok = true;
				}
			}
			FUNC6(tokens);
		}
	}

	FUNC4(line1);
	FUNC5(b);

	if (ok)
	{
		return FUNC1(&h, sizeof(h));
	}
	else
	{
		return NULL;
	}
}