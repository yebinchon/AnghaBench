#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dispmanx_video {scalar_t__ pageflip_pending; int /*<<< orphan*/  update; int /*<<< orphan*/  pending_mutex; int /*<<< orphan*/  vsync_condition; } ;
struct dispmanx_surface {int numpages; int used; int /*<<< orphan*/  element; struct dispmanx_surface* pages; int /*<<< orphan*/  page_used_mutex; int /*<<< orphan*/  resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dispmanx_surface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct dispmanx_video *_dispvars,
      struct dispmanx_surface **sp)
{
   int i;
   struct dispmanx_surface *surface = *sp;

   /* What if we run into the vsync cb code after freeing the surface?
    * We could be trying to get non-existant lock, signal non-existant condition..
    * So we wait for any pending flips to complete before freeing any surface. */
   FUNC3(_dispvars->pending_mutex);
   if (_dispvars->pageflip_pending > 0)
      FUNC1(_dispvars->vsync_condition, _dispvars->pending_mutex);
   FUNC4(_dispvars->pending_mutex);

   for (i = 0; i < surface->numpages; i++)
   {
      FUNC6(surface->pages[i].resource);
      surface->pages[i].used = false;
      FUNC2(surface->pages[i].page_used_mutex);
   }

   FUNC0(surface->pages);

   _dispvars->update = FUNC7(0);
   FUNC5(_dispvars->update, surface->element);
   FUNC8(_dispvars->update);

   FUNC0(surface);
   *sp = NULL;
}