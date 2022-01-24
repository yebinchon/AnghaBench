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
struct TYPE_3__ {int /*<<< orphan*/  buf; scalar_t__ hEvent; scalar_t__ pXAudio2; scalar_t__ pMasterVoice; scalar_t__ pSourceVoice; } ;
typedef  TYPE_1__ xaudio2_t ;
typedef  int /*<<< orphan*/  delete ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  XAUDIO2_COMMIT_NOW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(xaudio2_t *handle)
{
   if (!handle)
      return;

   if (handle->pSourceVoice)
   {
      FUNC3(handle->pSourceVoice,
            0, XAUDIO2_COMMIT_NOW);
      FUNC2(handle->pSourceVoice);
   }

   if (handle->pMasterVoice)
   {
      FUNC1(handle->pMasterVoice);
   }

   if (handle->pXAudio2)
   {
      FUNC4(handle->pXAudio2);
   }

   if (handle->hEvent)
      FUNC0(handle->hEvent);

   FUNC5(handle->buf);

#if defined(__cplusplus) && !defined(CINTERFACE)
   delete handle;
#else
   FUNC5(handle);
#endif
}