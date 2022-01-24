#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VCOS_STATUS_T ;
struct TYPE_10__ {int /*<<< orphan*/  completed_sem; int /*<<< orphan*/  start_sem; } ;
struct TYPE_11__ {int scene_id; TYPE_1__ capture; scalar_t__ verbose; } ;
typedef  TYPE_2__ RASPITEX_STATE ;

/* Variables and functions */
#define  RASPITEX_SCENE_MIRROR 133 
#define  RASPITEX_SCENE_SOBEL 132 
#define  RASPITEX_SCENE_SQUARE 131 
#define  RASPITEX_SCENE_TEAPOT 130 
#define  RASPITEX_SCENE_VCSM_SQUARE 129 
#define  RASPITEX_SCENE_YUV 128 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  VCOS_LOG_CATEGORY ; 
 int /*<<< orphan*/  VCOS_LOG_INFO ; 
 int /*<<< orphan*/  VCOS_LOG_WARN ; 
 scalar_t__ VCOS_SUCCESS ; 
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*) ; 

int FUNC12(RASPITEX_STATE *state)
{
   VCOS_STATUS_T status;
   int rc;
   FUNC4();

   FUNC6("RaspiTex", VCOS_LOG_CATEGORY);
   FUNC7(VCOS_LOG_CATEGORY,
                      state->verbose ? VCOS_LOG_INFO : VCOS_LOG_WARN);
   FUNC8("%s", VCOS_FUNCTION);

   status = FUNC9(&state->capture.start_sem,
                                  "glcap_start_sem", 1);
   if (status != VCOS_SUCCESS)
      goto error;

   status = FUNC9(&state->capture.completed_sem,
                                  "glcap_completed_sem", 0);
   if (status != VCOS_SUCCESS)
      goto error;

   switch (state->scene_id)
   {
   case RASPITEX_SCENE_SQUARE:
      rc = FUNC2(state);
      break;
   case RASPITEX_SCENE_MIRROR:
      rc = FUNC0(state);
      break;
   case RASPITEX_SCENE_TEAPOT:
      rc = FUNC3(state);
      break;
   case RASPITEX_SCENE_YUV:
      rc = FUNC11(state);
      break;
   case RASPITEX_SCENE_SOBEL:
      rc = FUNC1(state);
      break;
   case RASPITEX_SCENE_VCSM_SQUARE:
      rc = FUNC10(state);
      break;
   default:
      rc = -1;
      break;
   }
   if (rc != 0)
      goto error;

   return 0;

error:
   FUNC5("%s: failed", VCOS_FUNCTION);
   return -1;
}