#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  now ;
typedef  int UINT64 ;
typedef  int UINT ;
typedef  int UCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  int /*<<< orphan*/  IO ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int*,int) ; 
 int openssl_inited ; 
 int /*<<< orphan*/  openssl_lock ; 
 int FUNC17 () ; 
 int /*<<< orphan*/  ssl_clientcert_index ; 

void FUNC18()
{
	char tmp[16];

#if OPENSSL_VERSION_NUMBER < 0x10100000L || defined(LIBRESSL_VERSION_NUMBER)
//	RAND_Init_For_SoftEther()
	openssl_lock = FUNC5();
	FUNC13();
	//OpenSSL_add_all_algorithms();
	FUNC7();
	FUNC8();
	FUNC0();
	FUNC14();
#endif

	ssl_clientcert_index = FUNC12(0, "struct SslClientCertInfo *", NULL, NULL, NULL);

#ifdef	OS_UNIX
	{
		char *name1 = "/dev/random";
		char *name2 = "/dev/urandom";
		IO *o;
		o = FileOpen(name1, false);
		if (o == NULL)
		{
			o = FileOpen(name2, false);
			if (o == NULL)
			{
				UINT64 now = SystemTime64();
				BUF *b;
				UINT i;
				b = NewBuf();
				for (i = 0;i < 4096;i++)
				{
					UCHAR c = rand() % 256;
					WriteBuf(b, &c, 1);
				}
				WriteBuf(b, &now, sizeof(now));
				RAND_seed(b->Buf, b->Size);
				FreeBuf(b);
			}
			else
			{
				FileClose(o);
			}
		}
		else
		{
			FileClose(o);
		}
	}
#endif	// OS_UNIX

	FUNC9();

#ifdef	OS_WIN32
//	RAND_screen();
#endif
	FUNC11(tmp, sizeof(tmp));
	FUNC6();

	openssl_inited = true;
}