#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
typedef  int /*<<< orphan*/  ar_dest ;
struct TYPE_9__ {int /*<<< orphan*/  audio_render; } ;
struct TYPE_7__ {int /*<<< orphan*/  nVersion; } ;
struct TYPE_8__ {int nSize; scalar_t__ sName; TYPE_1__ nVersion; } ;
typedef  scalar_t__ OMX_ERRORTYPE ;
typedef  TYPE_2__ OMX_CONFIG_BRCMAUDIODESTINATIONTYPE ;
typedef  TYPE_3__ AUDIOPLAY_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ OMX_ErrorNone ; 
 int /*<<< orphan*/  OMX_IndexConfigBrcmAudioDestination ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  OMX_VERSION ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char const*) ; 

int32_t FUNC6(AUDIOPLAY_STATE_T *st, const char *name)
{
   int32_t success = -1;
   OMX_CONFIG_BRCMAUDIODESTINATIONTYPE ar_dest;

   if (name && FUNC5(name) < sizeof(ar_dest.sName))
   {
      OMX_ERRORTYPE error;
      FUNC3(&ar_dest, 0, sizeof(ar_dest));
      ar_dest.nSize = sizeof(OMX_CONFIG_BRCMAUDIODESTINATIONTYPE);
      ar_dest.nVersion.nVersion = OMX_VERSION;
      FUNC4((char *)ar_dest.sName, name);

      error = FUNC1(FUNC0(st->audio_render), OMX_IndexConfigBrcmAudioDestination, &ar_dest);
      FUNC2(error == OMX_ErrorNone);
      success = 0;
   }

   return success;
}