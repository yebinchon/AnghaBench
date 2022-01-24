#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
union string_list_elem_attr {int /*<<< orphan*/  i; } ;
typedef  unsigned int uint32_t ;
typedef  void string_list ;
struct TYPE_3__ {int /*<<< orphan*/  DisplayName; } ;
typedef  TYPE_1__ XAUDIO2_DEVICE_DETAILS ;
typedef  int /*<<< orphan*/  IXAudio2 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  XAUDIO2_DEFAULT_PROCESSOR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 void* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,char*,union string_list_elem_attr) ; 
 void* FUNC8 () ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC10(void *u)
{
#if defined(_XBOX) || !(_WIN32_WINNT >= 0x0602 /*_WIN32_WINNT_WIN8*/)
   unsigned i;
   union string_list_elem_attr attr;
   uint32_t dev_count              = 0;
   IXAudio2 *ixa2                  = NULL;
   struct string_list *sl          = FUNC8();

   if (!sl)
      return NULL;

   attr.i = 0;

   if (FUNC0(FUNC4(&ixa2, 0, XAUDIO2_DEFAULT_PROCESSOR)))
      return NULL;

   FUNC1(ixa2, &dev_count);

   for (i = 0; i < dev_count; i++)
   {
      XAUDIO2_DEVICE_DETAILS dev_detail;
      if (FUNC2(ixa2, i, &dev_detail) == S_OK)
      {
         char *str = FUNC9(dev_detail.DisplayName);

         if (str)
         {
            FUNC7(sl, str, attr);
            FUNC5(str);
         }
      }
   }

   FUNC3(ixa2);

   return sl;
#elif defined(__WINRT__)
   return NULL;
#else
   return mmdevice_list_new(u);
#endif
}