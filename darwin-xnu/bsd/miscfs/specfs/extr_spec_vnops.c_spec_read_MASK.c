#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vnop_read_args {int /*<<< orphan*/  a_ioflag; struct uio* a_uio; struct vnode* a_vp; } ;
struct TYPE_5__ {TYPE_1__* vu_specinfo; } ;
struct vnode {int v_type; int v_specsize; int /*<<< orphan*/  v_speclastr; int /*<<< orphan*/  v_rdev; TYPE_2__ v_un; } ;
struct uio {scalar_t__ uio_rw; long uio_offset; int /*<<< orphan*/  uio_segflg; } ;
struct buf {int dummy; } ;
struct _throttle_io_info_t {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;
typedef  int /*<<< orphan*/  daddr64_t ;
struct TYPE_6__ {int (* d_read ) (int /*<<< orphan*/ ,struct uio*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  d_type; } ;
struct TYPE_4__ {size_t si_devbsdunit; int /*<<< orphan*/  si_isssd; int /*<<< orphan*/  si_throttleable; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_DISK ; 
 int EINVAL ; 
 int /*<<< orphan*/  NOCRED ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ UIO_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  VBLK 129 
#define  VCHR 128 
 struct _throttle_io_info_t* _throttle_io_info ; 
 int FUNC1 (struct vnode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct buf**) ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 scalar_t__ FUNC4 (struct buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 
 TYPE_3__* cdevsw ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct uio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct _throttle_io_info_t*,int) ; 
 int FUNC12 (struct _throttle_io_info_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct uio*) ; 
 int FUNC14 (char*,int,struct uio*) ; 
 int /*<<< orphan*/  FUNC15 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC16 (struct vnode*) ; 

int
FUNC17(struct vnop_read_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct uio *uio = ap->a_uio;
	struct buf *bp;
	daddr64_t bn, nextbn;
	long bsize, bscale;
	int devBlockSize=0;
	int n, on;
	int error = 0;
	dev_t dev;

#if DIAGNOSTIC
	if (uio->uio_rw != UIO_READ)
		panic("spec_read mode");
	if (UIO_SEG_IS_USER_SPACE(uio->uio_segflg))
		panic("spec_read proc");
#endif
	if (FUNC13(uio) == 0)
		return (0);

	switch (vp->v_type) {

	case VCHR:
		{
			struct _throttle_io_info_t *throttle_info = NULL;
			int thread_throttle_level;
                if (cdevsw[FUNC7(vp->v_rdev)].d_type == D_DISK && vp->v_un.vu_specinfo->si_throttleable) {
			throttle_info = &_throttle_io_info[vp->v_un.vu_specinfo->si_devbsdunit];
				thread_throttle_level = FUNC12(throttle_info, NULL, 0, vp->v_un.vu_specinfo->si_isssd, TRUE, NULL);
                }
		error = (*cdevsw[FUNC7(vp->v_rdev)].d_read)
			(vp->v_rdev, uio, ap->a_ioflag);

			if (throttle_info) {
				FUNC11(throttle_info, thread_throttle_level);
			}

		return (error);
		}

	case VBLK:
		if (uio->uio_offset < 0)
			return (EINVAL);

		dev = vp->v_rdev;

		devBlockSize = vp->v_specsize;

		if (devBlockSize > PAGE_SIZE) 
			return (EINVAL);

	        bscale = PAGE_SIZE / devBlockSize;
		bsize = bscale * devBlockSize;

		do {
			on = uio->uio_offset % bsize;

			bn = (daddr64_t)((uio->uio_offset / devBlockSize) &~ (bscale - 1));
			
			if (vp->v_speclastr + bscale == bn) {
			        nextbn = bn + bscale;
				error = FUNC2(vp, bn, (int)bsize, &nextbn,
					       (int *)&bsize, 1, NOCRED, &bp);
			} else
			        error = FUNC1(vp, bn, (int)bsize, NOCRED, &bp);

			FUNC15(vp);
			vp->v_speclastr = bn;
			FUNC16(vp);

			n = bsize - FUNC6(bp);
			if ((on > n) || error) {
			        if (!error)
				        error = EINVAL;
				FUNC3(bp);
				return (error);
			}
			n = FUNC8((unsigned)(n  - on), FUNC13(uio));

			error = FUNC14((char *)FUNC4(bp) + on, n, uio);
			if (n + on == bsize)
				FUNC5(bp);
			FUNC3(bp);
		} while (error == 0 && FUNC13(uio) > 0 && n != 0);
		return (error);

	default:
		FUNC9("spec_read type");
	}
	/* NOTREACHED */

	return (0);
}