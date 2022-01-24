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
struct TYPE_3__ {scalar_t__ only_munmap; int fd; scalar_t__ ptr; scalar_t__ only_mmap; } ;
typedef  TYPE_1__ RegOp ;

/* Variables and functions */
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(RegOp *regOp)
{
   if (regOp->only_munmap == 0)
   {
      regOp->fd = FUNC6("/dev/uio0", O_RDWR);

      if (regOp->fd < 1)
         return;

      regOp->ptr = FUNC4(NULL, FUNC3(), PROT_READ|PROT_WRITE, MAP_SHARED, regOp->fd, 0);

      if (regOp->ptr == MAP_FAILED)
      {
         FUNC0("could not mmap() memory\n");
         FUNC2(1);
      }
   }

   if (regOp->only_mmap == 0)
   {
      if (FUNC5(regOp->ptr, FUNC3()) == -1)
      {
         FUNC0("could not munmap() memory\n");
         FUNC2(1);
      }

      FUNC1(regOp->fd);
   }

   return;
}