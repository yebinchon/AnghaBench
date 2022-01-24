#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  txtname ;
typedef  int /*<<< orphan*/  tmp ;
struct ssl_ctx_st {int dummy; } ;
typedef  int /*<<< orphan*/  exedir ;
typedef  int /*<<< orphan*/  dirname ;
typedef  int /*<<< orphan*/  X ;
typedef  size_t UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_6__ {int Folder; char* FileNameW; } ;
struct TYPE_5__ {size_t NumFiles; TYPE_2__** File; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ DIRLIST ;
typedef  TYPE_2__ DIRENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ssl_ctx_st*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC15 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int SHA1_SIZE ; 

void FUNC19(struct ssl_ctx_st *ctx)
{
	wchar_t dirname[MAX_SIZE];
	wchar_t exedir[MAX_SIZE];
	wchar_t txtname[MAX_SIZE];
	DIRLIST *dir;
	LIST *o;
	UINT i;

	// Validate arguments
	if (ctx == NULL)
	{
		return;
	}

	o = FUNC17(NULL);

	FUNC11(exedir, sizeof(exedir));

	FUNC4(dirname, sizeof(dirname), exedir, L"chain_certs");

	FUNC16(dirname);

	FUNC4(txtname, sizeof(txtname), dirname, L"Readme_Chain_Certs.txt");

	if (FUNC13(txtname) == false)
	{
		FUNC6(L"|chain_certs.txt", txtname);
	}

	dir = FUNC5(dirname);

	if (dir != NULL)
	{
		for (i = 0;i < dir->NumFiles;i++)
		{
			DIRENT *e = dir->File[i];

			if (e->Folder == false)
			{
				wchar_t tmp[MAX_SIZE];
				X *x;

				FUNC4(tmp, sizeof(tmp), dirname, e->FileNameW);

				x = FUNC7(tmp);

				if (x != NULL)
				{
					UINT j;
					bool exists = false;
					UCHAR hash[SHA1_SIZE];

					FUNC12(x, hash, true);

					for (j = 0;j < FUNC15(o);j++)
					{
						UCHAR *hash2 = FUNC14(o, j);

						if (FUNC3(hash, hash2, SHA1_SIZE) == 0)
						{
							exists = true;
						}
					}

					if (exists == false)
					{
						FUNC1(ctx, x);

						FUNC0(o, FUNC2(hash, SHA1_SIZE));
					}

					FUNC10(x);
				}
			}
		}

		FUNC9(dir);
	}

	for (i = 0;i < FUNC15(o);i++)
	{
		UCHAR *hash = FUNC14(o, i);

		FUNC8(hash);
	}

	FUNC18(o);
}