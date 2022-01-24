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
struct nbio_image_handle {int /*<<< orphan*/ * cb; int /*<<< orphan*/ * handle; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/ * handle; int /*<<< orphan*/ * data; int /*<<< orphan*/ * path; } ;
typedef  TYPE_1__ nbio_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(nbio_handle_t *nbio)
{
   struct nbio_image_handle *image = (struct nbio_image_handle*)nbio->data;

   if (image)
   {
      FUNC1(image->handle, image->type);

      image->handle                 = NULL;
      image->cb                     = NULL;
   }
   if (!FUNC3(nbio->path))
      FUNC0(nbio->path);
   if (nbio->data)
      FUNC0(nbio->data);
   FUNC2(nbio->handle);
   nbio->path        = NULL;
   nbio->data        = NULL;
   nbio->handle      = NULL;
}