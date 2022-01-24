#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  hex_a ;
typedef  int /*<<< orphan*/  hex ;
typedef  int /*<<< orphan*/  fn ;
typedef  int /*<<< orphan*/  exedir ;
typedef  int /*<<< orphan*/  dirname ;
struct TYPE_17__ {scalar_t__ root_cert; int /*<<< orphan*/  subject_name; } ;
typedef  TYPE_1__ X ;
typedef  size_t UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_19__ {int Folder; char* FileNameW; } ;
struct TYPE_18__ {size_t NumFiles; TYPE_3__** File; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_2__ DIRLIST ;
typedef  TYPE_3__ DIRENT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_DOWNLOAD_CERTS_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC17 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/ * FUNC19 (int) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC20 (char*,int,char*) ; 
 int FUNC21 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC24 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC25 (TYPE_1__*,int) ; 

bool FUNC26(LIST *o, X *x, bool auto_save, X **found_root_x)
{
	bool ret = false;
	LIST *chain = NULL;
	LIST *current_chain_dir = NULL;
	// Validate arguments
	if (o == NULL || x == NULL)
	{
		return false;
	}

	chain = FUNC19(false);

	ret = FUNC21(o, x, chain);

	if (ret)
	{
		UINT i;
		DIRLIST *dir;
		wchar_t dirname[MAX_SIZE];
		wchar_t exedir[MAX_SIZE];

		FUNC13(exedir, sizeof(exedir));
		FUNC3(dirname, sizeof(dirname), exedir, L"chain_certs");
		FUNC18(dirname);

		if (auto_save)
		{
			// delete the current auto_save files
			dir = FUNC7(dirname);
			if (dir != NULL)
			{
				for (i = 0;i < dir->NumFiles;i++)
				{
					DIRENT *e = dir->File[i];

					if (e->Folder == false)
					{
						if (FUNC22(e->FileNameW, AUTO_DOWNLOAD_CERTS_PREFIX))
						{
							wchar_t tmp[MAX_SIZE];

							FUNC3(tmp, sizeof(tmp), dirname, e->FileNameW);

							FUNC8(tmp);
						}
					}
				}

				FUNC11(dir);
			}
		}

		current_chain_dir = FUNC19(false);
		FUNC0(current_chain_dir);

		for (i = 0;i < FUNC17(chain);i++)
		{
			wchar_t tmp[MAX_SIZE];
			X *xx = FUNC16(chain, i);

			FUNC12(tmp, sizeof(tmp), xx->subject_name);

			FUNC5("depth = %u, subject = %S\n", i, tmp);

			if (auto_save && FUNC4(x, xx) == false && FUNC15(current_chain_dir, xx) == false)
			{
				wchar_t fn[MAX_PATH];
				char hex_a[128];
				wchar_t hex[128];
				UCHAR hash[SHA1_SIZE];
				wchar_t tmp[MAX_SIZE];
				BUF *b;

				FUNC14(xx, hash, true);
				FUNC1(hex_a, sizeof(hex_a), hash, SHA1_SIZE);
				FUNC20(hex, sizeof(hex), hex_a);

				FUNC24(fn, sizeof(fn), AUTO_DOWNLOAD_CERTS_PREFIX);
				FUNC23(fn, sizeof(fn), hex);
				FUNC23(fn, sizeof(fn), L".cer");

				FUNC3(tmp, sizeof(tmp), dirname, fn);

				b = FUNC25(xx, true);

				FUNC6(b, tmp);

				FUNC9(b);
			}

			if (xx->root_cert)
			{
				if (found_root_x != NULL)
				{
					*found_root_x = FUNC2(xx);
				}
			}
		}
	}

	FUNC10(chain);

	FUNC10(current_chain_dir);

	return ret;
}