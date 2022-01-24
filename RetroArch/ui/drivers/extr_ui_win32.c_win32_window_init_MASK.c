#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cbSize; int style; char const* lpszClassName; scalar_t__ hbrBackground; scalar_t__ hIconSm; int /*<<< orphan*/  hIcon; int /*<<< orphan*/  hCursor; int /*<<< orphan*/  hInstance; } ;
typedef  TYPE_1__ WNDCLASSEX ;
typedef  scalar_t__ HICON ;
typedef  scalar_t__ HBRUSH ;

/* Variables and functions */
 scalar_t__ COLOR_WINDOW ; 
 int CS_CLASSDC ; 
 int CS_HREDRAW ; 
 int CS_OWNDC ; 
 int CS_VREDRAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDC_ARROW ; 
 int /*<<< orphan*/  IDI_ICON ; 
 int /*<<< orphan*/  IMAGE_ICON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_HASH_USER_LANGUAGE ; 
 int /*<<< orphan*/  MSG_PROGRAM ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 char const* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

bool FUNC10(WNDCLASSEX *wndclass,
      bool fullscreen, const char *class_name)
{
#if _WIN32_WINNT >= 0x0501
   /* Use the language set in the config for the menubar... also changes the console language. */
   SetThreadUILanguage(win32_get_langid_from_retro_lang(*msg_hash_get_uint(MSG_HASH_USER_LANGUAGE)));
#endif
   wndclass->cbSize        = sizeof(WNDCLASSEX);
   wndclass->style         = CS_HREDRAW | CS_VREDRAW | CS_OWNDC;
   wndclass->hInstance     = FUNC0(NULL);
   wndclass->hCursor       = FUNC1(NULL, IDC_ARROW);
   wndclass->lpszClassName = (class_name != NULL) ? class_name : FUNC8(MSG_PROGRAM);
   wndclass->hIcon         = FUNC2(FUNC0(NULL), FUNC4(IDI_ICON));
   wndclass->hIconSm       = (HICON)FUNC3(FUNC0(NULL),
         FUNC4(IDI_ICON), IMAGE_ICON, 16, 16, 0);
   if (!fullscreen)
      wndclass->hbrBackground = (HBRUSH)COLOR_WINDOW;

   if (class_name != NULL)
      wndclass->style         |= CS_CLASSDC;

   if (!FUNC5(wndclass))
      return false;

   return true;
}