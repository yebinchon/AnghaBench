#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  struct vnode* vnode_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int u_int ;
struct vnode {int dummy; } ;
struct vfs_context {int /*<<< orphan*/  vc_ucred; int /*<<< orphan*/  vc_thread; } ;
struct fileproc {TYPE_5__* f_fglob; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/  kd_threadmap ;
typedef  int /*<<< orphan*/  kd_regtype ;
typedef  int /*<<< orphan*/  kd_bufinfo ;
typedef  int /*<<< orphan*/  kd_buf ;
struct TYPE_6__ {int nkdbufs; int nkdthreads; int nolog; int flags; int bufid; } ;
typedef  TYPE_1__ kbufinfo_t ;
struct TYPE_8__ {int /*<<< orphan*/  fg_offset; scalar_t__ fg_data; int /*<<< orphan*/  fg_cred; } ;
struct TYPE_7__ {int kdebug_flags; int kdebug_slowcheck; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  DTYPE_VNODE ; 
 int EBADF ; 
 int EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int KDBG_BUFINIT ; 
 int KDBG_LOCKINIT ; 
 int KDBG_LP64 ; 
 int /*<<< orphan*/  FUNC1 (int,...) ; 
 unsigned int KDBG_USERFLAGS ; 
 unsigned int KDEBUG_ENABLE_PPT ; 
 unsigned int KDEBUG_ENABLE_TRACE ; 
#define  KERN_KDBUFWAIT 149 
#define  KERN_KDCPUMAP 148 
#define  KERN_KDDFLAGS 147 
#define  KERN_KDEFLAGS 146 
#define  KERN_KDENABLE 145 
#define  KERN_KDGETBUF 144 
#define  KERN_KDGETREG 143 
#define  KERN_KDPIDEX 142 
#define  KERN_KDPIDTR 141 
#define  KERN_KDREADCURTHRMAP 140 
#define  KERN_KDREADTR 139 
#define  KERN_KDREMOVE 138 
#define  KERN_KDSETBUF 137 
#define  KERN_KDSETREG 136 
#define  KERN_KDSETUP 135 
#define  KERN_KDSET_TYPEFILTER 134 
#define  KERN_KDTEST 133 
#define  KERN_KDTHRMAP 132 
#define  KERN_KDWRITEMAP 131 
#define  KERN_KDWRITEMAP_V3 130 
#define  KERN_KDWRITETR 129 
#define  KERN_KDWRITETR_V3 128 
 int /*<<< orphan*/  KTRACE_KDEBUG ; 
 int /*<<< orphan*/  RAW_VERSION1 ; 
 int /*<<< orphan*/  RAW_VERSION3 ; 
 int /*<<< orphan*/  RAW_file_offset ; 
 int SLOW_NOLOG ; 
 int TRACE_WRITING_EVENTS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct fileproc*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,struct fileproc**,int) ; 
 TYPE_3__ kd_ctrl_page ; 
 int kd_mapcount ; 
 int FUNC9 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC10 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ ,size_t*,struct vnode*,struct vfs_context*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,size_t*) ; 
 int FUNC14 (int /*<<< orphan*/ ,size_t*) ; 
 int FUNC15 (int /*<<< orphan*/ ,size_t,int) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (size_t) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 size_t FUNC24 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct vnode*,struct vfs_context*) ; 
 int /*<<< orphan*/  kdebug_enable ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int FUNC27 (int /*<<< orphan*/ ) ; 
 int FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int nkdbufs ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 int FUNC36 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC37 (struct vnode*) ; 

int
FUNC38(int *name, u_int namelen, user_addr_t where, size_t *sizep)
{
	int ret = 0;
	size_t size = *sizep;
	unsigned int value = 0;
	kd_regtype kd_Reg;
	kbufinfo_t kd_bufinfo;
	proc_t p;

	if (name[0] == KERN_KDWRITETR ||
		name[0] == KERN_KDWRITETR_V3 ||
		name[0] == KERN_KDWRITEMAP ||
		name[0] == KERN_KDWRITEMAP_V3 ||
		name[0] == KERN_KDEFLAGS ||
		name[0] == KERN_KDDFLAGS ||
		name[0] == KERN_KDENABLE ||
		name[0] == KERN_KDSETBUF)
	{
		if (namelen < 2) {
			return EINVAL;
		}
		value = name[1];
	}

	FUNC11();
	FUNC2(kd_ctrl_page.kdebug_flags & KDBG_LOCKINIT);

	FUNC29();

	/*
	 * Some requests only require "read" access to kdebug trace.  Regardless,
	 * tell ktrace that a configuration or read is occurring (and see if it's
	 * allowed).
	 */
	if (name[0] != KERN_KDGETBUF &&
	    name[0] != KERN_KDGETREG &&
	    name[0] != KERN_KDREADCURTHRMAP)
	{
		if ((ret = FUNC27(KTRACE_KDEBUG))) {
			goto out;
		}
	} else {
		if ((ret = FUNC30())) {
			goto out;
		}
	}

	switch(name[0]) {
		case KERN_KDGETBUF:
			if (size < sizeof(kd_bufinfo.nkdbufs)) {
				/*
				 * There is not enough room to return even
				 * the first element of the info structure.
				 */
				ret = EINVAL;
				break;
			}

			FUNC33(&kd_bufinfo, 0, sizeof(kd_bufinfo));

			kd_bufinfo.nkdbufs = nkdbufs;
			kd_bufinfo.nkdthreads = kd_mapcount;

			if ( (kd_ctrl_page.kdebug_slowcheck & SLOW_NOLOG) )
				kd_bufinfo.nolog = 1;
			else
				kd_bufinfo.nolog = 0;

			kd_bufinfo.flags = kd_ctrl_page.kdebug_flags;
#if defined(__LP64__)
			kd_bufinfo.flags |= KDBG_LP64;
#endif
			{
				int pid = FUNC28();
				kd_bufinfo.bufid = (pid == 0 ? -1 : pid);
			}

			if (size >= sizeof(kd_bufinfo)) {
				/*
				 * Provide all the info we have
				 */
				if (FUNC4(&kd_bufinfo, where, sizeof(kd_bufinfo)))
					ret = EINVAL;
			} else {
				/*
				 * For backwards compatibility, only provide
				 * as much info as there is room for.
				 */
				if (FUNC4(&kd_bufinfo, where, size))
					ret = EINVAL;
			}
			break;

		case KERN_KDREADCURTHRMAP:
			ret = FUNC14(where, sizep);
			break;

		case KERN_KDEFLAGS:
			value &= KDBG_USERFLAGS;
			kd_ctrl_page.kdebug_flags |= value;
			break;

		case KERN_KDDFLAGS:
			value &= KDBG_USERFLAGS;
			kd_ctrl_page.kdebug_flags &= ~value;
			break;

		case KERN_KDENABLE:
			/*
			 * Enable tracing mechanism.  Two types:
			 * KDEBUG_TRACE is the standard one,
			 * and KDEBUG_PPT which is a carefully
			 * chosen subset to avoid performance impact.
			 */
			if (value) {
				/*
				 * enable only if buffer is initialized
				 */
				if (!(kd_ctrl_page.kdebug_flags & KDBG_BUFINIT) || 
				    !(value == KDEBUG_ENABLE_TRACE || value == KDEBUG_ENABLE_PPT)) {
					ret = EINVAL;
					break;
				}
				FUNC23();

				FUNC18(TRUE, value);
			}
			else
			{
				if (!kdebug_enable) {
					break;
				}

				FUNC26();
			}
			break;

		case KERN_KDSETBUF:
			FUNC17(value);
			break;

		case KERN_KDSETUP:
			ret = FUNC16(FALSE);
			break;

		case KERN_KDREMOVE:
			FUNC31(KTRACE_KDEBUG);
			break;

		case KERN_KDSETREG:
			if(size < sizeof(kd_regtype)) {
				ret = EINVAL;
				break;
			}
			if (FUNC3(where, &kd_Reg, sizeof(kd_regtype))) {
				ret = EINVAL;
				break;
			}

			ret = FUNC21(&kd_Reg);
			break;

		case KERN_KDGETREG:
			ret = EINVAL;
			break;

		case KERN_KDREADTR:
			ret = FUNC12(where, sizep, NULL, NULL, RAW_VERSION1);
			break;

		case KERN_KDWRITETR:
		case KERN_KDWRITETR_V3:
		case KERN_KDWRITEMAP:
		case KERN_KDWRITEMAP_V3:
		{
			struct	vfs_context context;
			struct	fileproc *fp;
			size_t	number;
			vnode_t	vp;
			int	fd;

			if (name[0] == KERN_KDWRITETR || name[0] == KERN_KDWRITETR_V3) {
				(void)FUNC24(size, TRUE);
			}
			p = FUNC5();
			fd = value;

			FUNC34(p);
			if ( (ret = FUNC8(p, fd, &fp, 1)) ) {
				FUNC35(p);
				break;
			}
			context.vc_thread = FUNC6();
			context.vc_ucred = fp->f_fglob->fg_cred;

			if (FUNC0(fp->f_fglob) != DTYPE_VNODE) {
				FUNC7(p, fd, fp, 1);
				FUNC35(p);

				ret = EBADF;
				break;
			}
			vp = (struct vnode *)fp->f_fglob->fg_data;
			FUNC35(p);

			if ((ret = FUNC36(vp)) == 0) {
				RAW_file_offset = fp->f_fglob->fg_offset;
				if (name[0] == KERN_KDWRITETR || name[0] == KERN_KDWRITETR_V3) {
					number = nkdbufs * sizeof(kd_buf);

					FUNC1(TRACE_WRITING_EVENTS | DBG_FUNC_START);
					if (name[0] == KERN_KDWRITETR_V3)
						ret = FUNC12(0, &number, vp, &context, RAW_VERSION3);
					else
						ret = FUNC12(0, &number, vp, &context, RAW_VERSION1);
					FUNC1(TRACE_WRITING_EVENTS | DBG_FUNC_END, number);

					*sizep = number;
				} else {
					number = kd_mapcount * sizeof(kd_threadmap);
					if (name[0] == KERN_KDWRITEMAP_V3) {
						ret = FUNC15(0, number, fd);
					} else {
						ret = FUNC25(vp, &context);
					}
				}
				fp->f_fglob->fg_offset = RAW_file_offset;
				FUNC37(vp);
			}
			FUNC7(p, fd, fp, 0);

			break;
		}
		case KERN_KDBUFWAIT:
			*sizep = FUNC24(size, FALSE);
			break;

		case KERN_KDPIDTR:
			if (size < sizeof(kd_regtype)) {
				ret = EINVAL;
				break;
			}
			if (FUNC3(where, &kd_Reg, sizeof(kd_regtype))) {
				ret = EINVAL;
				break;
			}

			ret = FUNC19(&kd_Reg);
			break;

		case KERN_KDPIDEX:
			if (size < sizeof(kd_regtype)) {
				ret = EINVAL;
				break;
			}
			if (FUNC3(where, &kd_Reg, sizeof(kd_regtype))) {
				ret = EINVAL;
				break;
			}

			ret = FUNC20(&kd_Reg);
			break;

		case KERN_KDCPUMAP:
			ret = FUNC13(where, sizep);
			break;

		case KERN_KDTHRMAP:
			ret = FUNC10(where, sizep);
			break;

		case KERN_KDSET_TYPEFILTER: {
			ret = FUNC9(where, size);
			break;
		}

		case KERN_KDTEST:
			ret = FUNC22(size);
			break;

		default:
			ret = EINVAL;
			break;
	}
out:
	FUNC32();

	return ret;
}