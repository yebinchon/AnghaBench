#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  files ;
typedef  int /*<<< orphan*/  filename_w ;
struct TYPE_8__ {int /*<<< orphan*/  Path; } ;
typedef  TYPE_1__ VI_SETTING_ARCH ;
struct TYPE_9__ {int /*<<< orphan*/  Buf; int /*<<< orphan*/  BufSize; scalar_t__ Halt; int /*<<< orphan*/  hWnd; } ;
typedef  TYPE_2__ VI_INSTALL_DLG ;
typedef  int /*<<< orphan*/  VI_FILE ;
struct TYPE_10__ {float FileName; float DestPathW; int /*<<< orphan*/  SrcPath; } ;
typedef  TYPE_3__ VI_DOWNLOAD_FILE ;
typedef  size_t UINT ;
struct TYPE_11__ {int /*<<< orphan*/  DownloadedSettingPathW; int /*<<< orphan*/  DownloadedInstallerPathW; scalar_t__ DownloadNotRequired; int /*<<< orphan*/  SettingPath; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  int /*<<< orphan*/  IO ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (float,int,int /*<<< orphan*/ ) ; 
 scalar_t__ IDS_DOWNLOADING ; 
 scalar_t__ IDS_DOWNLOADING2 ; 
 scalar_t__ IDS_DOWNLOADING3 ; 
 scalar_t__ IDS_DOWNLOADSTART ; 
 scalar_t__ IDS_DOWNLOAD_ERROR ; 
 scalar_t__ IDS_TEMP_ERROR ; 
 size_t INFINITE ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  MB_ICONSTOP ; 
 int /*<<< orphan*/  FUNC6 (float,int,float) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ S_SIZEINFO ; 
 scalar_t__ S_STATUS ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,float) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,float,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,float) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 size_t FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ) ; 
 size_t FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_VI_DOWNLOAD_FINISHED ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 TYPE_4__ setting ; 
 scalar_t__ skip ; 

void FUNC24(THREAD *thread, void *param)
{
	VI_INSTALL_DLG *d;
	VI_SETTING_ARCH *a;
	HWND hWnd;
	UINT num_files = 2;
	VI_DOWNLOAD_FILE files[2];
	VI_DOWNLOAD_FILE *f;
	UINT i;
	// Validate arguments
	if (thread == NULL || param == NULL)
	{
		return;
	}

	d = (VI_INSTALL_DLG *)param;
	hWnd = d->hWnd;

	FUNC22(files, sizeof(files));

	a = FUNC16();

	// File body
	f = &files[0];
	FUNC10(f->SrcPath, sizeof(f->SrcPath), a->Path);

	// Configuration file
	if (FUNC5(setting.SettingPath) == false)
	{
		f = &files[1];
		FUNC10(f->SrcPath, sizeof(f->SrcPath), setting.SettingPath);
	}
	else
	{
		// No configuration file
		num_files = 1;
	}

	for (i = 0;i < num_files;i++)
	{
		bool b = true;

		if (i == 0 && setting.DownloadNotRequired)
		{
			b = false;
		}

		if (b)
		{
			wchar_t tmp[MAX_SIZE];
			IO *dest = NULL;
			VI_FILE *down;
			UINT ret;
			UINT totalsize;
			UINT currentsize;
			wchar_t filename_w[MAX_PATH];

			f = &files[i];
			FUNC4(f->FileName, sizeof(f->FileName), f->SrcPath);
			FUNC6(f->FileName, sizeof(f->FileName), f->FileName);

			FUNC11(filename_w, sizeof(filename_w), f->FileName);
			FUNC0(f->DestPathW, sizeof(f->DestPathW), FUNC7(), filename_w);

			FUNC18(hWnd, 0);
			FUNC12(tmp, sizeof(tmp), FUNC23(IDS_DOWNLOADSTART+skip), f->FileName);
			FUNC19(d, hWnd, S_STATUS, tmp);

			down = FUNC20(f->SrcPath);
			if (down == NULL)
			{
				FUNC8(hWnd, MB_ICONSTOP, FUNC23(IDS_DOWNLOAD_ERROR+skip), f->FileName);

				FUNC17(hWnd);
				return;
			}

			dest = FUNC2(f->DestPathW);
			if (dest == NULL)
			{
				FUNC8(hWnd, MB_ICONSTOP, FUNC23(IDS_TEMP_ERROR+skip), f->DestPathW);

				FUNC14(down);
				FUNC17(hWnd);
				return;
			}

			totalsize = FUNC15(down);
			currentsize = 0;

			FUNC12(tmp, sizeof(tmp), FUNC23(IDS_DOWNLOADING3+skip), f->FileName);
			FUNC19(d, hWnd, S_STATUS, tmp);

			while (true)
			{
				UINT pos = 0;

				if (d->Halt)
				{
					// User cancel
					FUNC1(dest);
					FUNC14(down);
					return;
				}

				FUNC12(tmp, sizeof(tmp), FUNC23(IDS_DOWNLOADING3+skip), f->FileName);

				FUNC19(d, hWnd, IDS_DOWNLOADING3+skip, tmp);
				ret = FUNC21(down, d->Buf, d->BufSize);

				if (ret == INFINITE)
				{
					// Communication error
					FUNC8(hWnd, MB_ICONSTOP, FUNC23(IDS_DOWNLOAD_ERROR+skip), f->FileName);

					FUNC1(dest);
					FUNC14(down);
					FUNC17(hWnd);

					return;
				}

				// Draw progress
				currentsize += ret;

				if (totalsize != 0)
				{
					FUNC12(tmp, sizeof(tmp), FUNC23(IDS_DOWNLOADING+skip),
						((float)totalsize) / 1024.0f / 1024.0f,
						((float)currentsize) / 1024.0f / 1024.0f);

					pos = (UINT)(((float)currentsize) * 100.0f / ((float)totalsize));
				}
				else
				{
					FUNC12(tmp, sizeof(tmp), FUNC23(IDS_DOWNLOADING2+skip),
						((float)currentsize) / 1024.0f / 1024.0f);
					pos = (UINT)(((float)currentsize) * 100.0f / (1024.0f * 1024.0f * 10.0f));
				}

				FUNC19(d, hWnd, S_SIZEINFO, tmp);
				FUNC18(hWnd, pos);

				if (ret == 0)
				{
					// Download Complete
					break;
				}
				else
				{
					FUNC3(dest, d->Buf, ret);
				}
			}

			FUNC14(down);
			FUNC1(dest);
		}
	}

	FUNC13(setting.DownloadedInstallerPathW, sizeof(setting.DownloadedInstallerPathW),
		files[0].DestPathW);

	if (num_files >= 2)
	{
		FUNC13(setting.DownloadedSettingPathW, sizeof(setting.DownloadedSettingPathW),
			files[1].DestPathW);
	}

	FUNC9(hWnd, WM_VI_DOWNLOAD_FINISHED, 0, 0);
}