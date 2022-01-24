#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int init; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  sema; int /*<<< orphan*/  process_lock; int /*<<< orphan*/  lock; scalar_t__ type; } ;
typedef  scalar_t__ BRCMJPEG_TYPE_T ;
typedef  TYPE_1__ BRCMJPEG_T ;
typedef  scalar_t__ BRCMJPEG_STATUS_T ;

/* Variables and functions */
 scalar_t__ BRCMJPEG_ERROR_NOMEM ; 
 scalar_t__ BRCMJPEG_SUCCESS ; 
 scalar_t__ BRCMJPEG_TYPE_ENCODER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ VCOS_SUCCESS ; 
 TYPE_1__* brcmjpeg_decoder ; 
 TYPE_1__* brcmjpeg_encoder ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  brcmjpeg_init_once ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**) ; 
 int /*<<< orphan*/  once ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

BRCMJPEG_STATUS_T FUNC14(BRCMJPEG_TYPE_T type, BRCMJPEG_T **ctx)
{
   BRCMJPEG_STATUS_T status = BRCMJPEG_SUCCESS;
   BRCMJPEG_T **comp;

   if (type == BRCMJPEG_TYPE_ENCODER)
      comp = &brcmjpeg_encoder;
   else
      comp = &brcmjpeg_decoder;

   FUNC11(&once, brcmjpeg_init_once);
   FUNC0();
   if (!*comp)
   {
      int init1, init2, init3;
      *comp = FUNC7(sizeof(BRCMJPEG_T), 1);
      if (!*comp)
      {
         FUNC2();
         return BRCMJPEG_ERROR_NOMEM;
      }
      (*comp)->type = type;
      init1 = FUNC9(&(*comp)->lock, "brcmjpeg lock") != VCOS_SUCCESS;
      init2 = FUNC9(&(*comp)->process_lock, "brcmjpeg process lock") != VCOS_SUCCESS;
      init3 = FUNC12(&(*comp)->sema, "brcmjpeg sema", 0) != VCOS_SUCCESS;
      if (init1 | init2 | init3)
      {
         if (init1) FUNC10(&(*comp)->lock);
         if (init2) FUNC10(&(*comp)->process_lock);
         if (init3) FUNC13(&(*comp)->sema);
         FUNC8(comp);
         FUNC2();
         return BRCMJPEG_ERROR_NOMEM;
      }
   }
   (*comp)->ref_count++;
   FUNC2();

   FUNC1(*comp);
   if (!(*comp)->init)
   {
      if (type == BRCMJPEG_TYPE_ENCODER)
         status = FUNC5(*comp);
      else
         status = FUNC4(*comp);

      (*comp)->init = status == BRCMJPEG_SUCCESS;
   }
   FUNC3(*comp);

   if (status != BRCMJPEG_SUCCESS)
      FUNC6(*comp);

   *ctx = *comp;
   return status;
}