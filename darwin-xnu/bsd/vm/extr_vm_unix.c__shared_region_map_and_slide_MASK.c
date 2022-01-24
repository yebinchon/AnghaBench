#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  size_t uint32_t ;
struct vnode_attr {scalar_t__ va_uid; int /*<<< orphan*/  va_access_time; } ;
struct vnode {scalar_t__ v_type; scalar_t__ v_mount; int /*<<< orphan*/  v_flag; int /*<<< orphan*/  v_name; } ;
struct vm_shared_region {int dummy; } ;
struct shared_file_mapping_np {int sfm_init_prot; int /*<<< orphan*/  sfm_max_prot; int /*<<< orphan*/  sfm_file_offset; int /*<<< orphan*/  sfm_size; int /*<<< orphan*/  sfm_address; } ;
struct proc {int p_flag; int /*<<< orphan*/  p_comm; int /*<<< orphan*/  p_pid; TYPE_1__* p_fd; } ;
struct fileproc {TYPE_2__* f_fglob; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  memory_object_size_t ;
typedef  scalar_t__ memory_object_control_t ;
typedef  int kern_return_t ;
struct TYPE_5__ {int fg_flag; scalar_t__ fg_data; } ;
struct TYPE_4__ {struct vnode* fd_rdir; } ;

/* Variables and functions */
 scalar_t__ DTYPE_VNODE ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FREAD ; 
#define  KERN_FAILURE 132 
#define  KERN_INVALID_ADDRESS 131 
#define  KERN_INVALID_ARGUMENT 130 
#define  KERN_NO_SPACE 129 
#define  KERN_PROTECTION_FAILURE 128 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  MAP_FILE ; 
 scalar_t__ MEMORY_OBJECT_CONTROL_NULL ; 
 int MNT_NOATIME ; 
 int /*<<< orphan*/  FUNC1 (size_t,int*) ; 
 int P_NOSHLIB ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  UBC_HOLDOBJECT ; 
 int /*<<< orphan*/  FUNC4 (struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct vnode*) ; 
 int /*<<< orphan*/  VM_PROT_ALL ; 
 int VM_PROT_ZF ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  VSHARED_DYLD ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct vnode* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct proc*,int,struct fileproc*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct proc*,int,struct fileproc**,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct vnode* rootvnode ; 
 scalar_t__ scdir_enforce ; 
 int /*<<< orphan*/  scdir_path ; 
 scalar_t__ FUNC15 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  va_access_time ; 
 int /*<<< orphan*/  va_uid ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct vm_shared_region*) ; 
 int FUNC20 (struct vm_shared_region*,size_t,struct shared_file_mapping_np*,scalar_t__,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vm_shared_region* FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (struct vnode*,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct vnode*) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode**,int /*<<< orphan*/ ) ; 
 struct vnode* FUNC26 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC27 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC28 (struct vnode*,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int FUNC29 (struct vnode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct vnode*) ; 
 int FUNC31 (struct vnode*) ; 

int
FUNC32(
	struct proc				*p,
	int					fd,
	uint32_t				mappings_count,
	struct shared_file_mapping_np		*mappings,
	uint32_t				slide,
	user_addr_t				slide_start,
	user_addr_t				slide_size)
{
	int				error;
	kern_return_t			kr;
	struct fileproc			*fp;
	struct vnode			*vp, *root_vp, *scdir_vp;
	struct vnode_attr		va;
	off_t				fs;
	memory_object_size_t		file_size;
#if CONFIG_MACF
	vm_prot_t			maxprot = VM_PROT_ALL;
#endif
	memory_object_control_t		file_control;
	struct vm_shared_region		*shared_region;
	uint32_t			i;

	FUNC2(
		("shared_region: %p [%d(%s)] -> map\n",
		 (void )FUNC7(FUNC10()),
		 p->p_pid, p->p_comm));

	shared_region = NULL;
	fp = NULL;
	vp = NULL;
	scdir_vp = NULL;

	/* get file structure from file descriptor */
	error = FUNC12(p, fd, &fp, 0);
	if (error) {
		FUNC3(
			("shared_region: %p [%d(%s)] map: "
			 "fd=%d lookup failed (error=%d)\n",
			 (void )FUNC7(FUNC10()),
			 p->p_pid, p->p_comm, fd, error));
		goto done;
	}

	/* make sure we're attempting to map a vnode */
	if (FUNC0(fp->f_fglob) != DTYPE_VNODE) {
		FUNC3(
			("shared_region: %p [%d(%s)] map: "
			 "fd=%d not a vnode (type=%d)\n",
			 (void )FUNC7(FUNC10()),
			 p->p_pid, p->p_comm,
			 fd, FUNC0(fp->f_fglob)));
		error = EINVAL;
		goto done;
	}

	/* we need at least read permission on the file */
	if (! (fp->f_fglob->fg_flag & FREAD)) {
		FUNC3(
			("shared_region: %p [%d(%s)] map: "
			 "fd=%d not readable\n",
			 (void )FUNC7(FUNC10()),
			 p->p_pid, p->p_comm, fd));
		error = EPERM;
		goto done;
	}

	/* get vnode from file structure */
	error = FUNC23((vnode_t) fp->f_fglob->fg_data);
	if (error) {
		FUNC3(
			("shared_region: %p [%d(%s)] map: "
			 "fd=%d getwithref failed (error=%d)\n",
			 (void )FUNC7(FUNC10()),
			 p->p_pid, p->p_comm, fd, error));
		goto done;
	}
	vp = (struct vnode *) fp->f_fglob->fg_data;

	/* make sure the vnode is a regular file */
	if (vp->v_type != VREG) {
		FUNC3(
			("shared_region: %p [%d(%s)] map(%p:'%s'): "
			 "not a file (type=%d)\n",
			 (void )FUNC7(FUNC10()),
			 p->p_pid, p->p_comm,
			 (void )FUNC7(vp),
			 vp->v_name, vp->v_type));
		error = EINVAL;
		goto done;
	}

#if CONFIG_MACF
	/* pass in 0 for the offset argument because AMFI does not need the offset
		of the shared cache */
	error = mac_file_check_mmap(vfs_context_ucred(vfs_context_current()),
			fp->f_fglob, VM_PROT_ALL, MAP_FILE, 0, &maxprot);
	if (error) {
		goto done;
	}
#endif /* MAC */

	/* make sure vnode is on the process's root volume */
	root_vp = p->p_fd->fd_rdir;
	if (root_vp == NULL) {
		root_vp = rootvnode;
	} else {
		/*
		 * Chroot-ed processes can't use the shared_region.
		 */
		error = EINVAL;
		goto done;
	}

	if (vp->v_mount != root_vp->v_mount) {
		FUNC3(
			("shared_region: %p [%d(%s)] map(%p:'%s'): "
			 "not on process's root volume\n",
			 (void )FUNC7(FUNC10()),
			 p->p_pid, p->p_comm,
			 (void )FUNC7(vp), vp->v_name));
		error = EPERM;
		goto done;
	}

	/* make sure vnode is owned by "root" */
	FUNC4(&va);
	FUNC6(&va, va_uid);
	error = FUNC22(vp, &va, FUNC17());
	if (error) {
		FUNC3(
			("shared_region: %p [%d(%s)] map(%p:'%s'): "
			 "vnode_getattr(%p) failed (error=%d)\n",
			 (void )FUNC7(FUNC10()),
			 p->p_pid, p->p_comm,
			 (void )FUNC7(vp), vp->v_name,
			 (void )FUNC7(vp), error));
		goto done;
	}
	if (va.va_uid != 0) {
		FUNC3(
			("shared_region: %p [%d(%s)] map(%p:'%s'): "
			 "owned by uid=%d instead of 0\n",
			 (void )FUNC7(FUNC10()),
			 p->p_pid, p->p_comm,
			 (void )FUNC7(vp),
			 vp->v_name, va.va_uid));
		error = EPERM;
		goto done;
	}

	if (scdir_enforce) {
		/* get vnode for scdir_path */
		error = FUNC25(scdir_path, 0, &scdir_vp, FUNC17());
		if (error) {
			FUNC3(
				("shared_region: %p [%d(%s)] map(%p:'%s'): "
				 "vnode_lookup(%s) failed (error=%d)\n",
				 (void )FUNC7(FUNC10()),
				 p->p_pid, p->p_comm,
				 (void )FUNC7(vp), vp->v_name,
				 scdir_path, error));
			goto done;
		}

		/* ensure parent is scdir_vp */
		if (FUNC26(vp) != scdir_vp) {
			FUNC3(
				("shared_region: %p [%d(%s)] map(%p:'%s'): "
				 "shared cache file not in %s\n",
				 (void )FUNC7(FUNC10()),
				 p->p_pid, p->p_comm,
				 (void )FUNC7(vp),
				 vp->v_name, scdir_path));
			error = EPERM;
			goto done;
		}
	}

	/* get vnode size */
	error = FUNC29(vp, &fs, FUNC17());
	if (error) {
		FUNC3(
			("shared_region: %p [%d(%s)] map(%p:'%s'): "
			 "vnode_size(%p) failed (error=%d)\n",
			 (void )FUNC7(FUNC10()),
			 p->p_pid, p->p_comm,
			 (void )FUNC7(vp), vp->v_name,
			 (void )FUNC7(vp), error));
		goto done;
	}
	file_size = fs;

	/* get the file's memory object handle */
	file_control = FUNC16(vp, UBC_HOLDOBJECT);
	if (file_control == MEMORY_OBJECT_CONTROL_NULL) {
		FUNC3(
			("shared_region: %p [%d(%s)] map(%p:'%s'): "
			 "no memory object\n",
			 (void )FUNC7(FUNC10()),
			 p->p_pid, p->p_comm,
			 (void )FUNC7(vp), vp->v_name));
		error = EINVAL;
		goto done;
	}

	/* check that the mappings are properly covered by code signatures */
	if (!FUNC8()) {
		/* code signing is not enforced: no need to check */
	} else for (i = 0; i < mappings_count; i++) {
		if (mappings[i].sfm_init_prot & VM_PROT_ZF) {
			/* zero-filled mapping: not backed by the file */
			continue;
		}
		if (FUNC15(vp,
					       mappings[i].sfm_file_offset,
					       mappings[i].sfm_size)) {
			/* this mapping is fully covered by code signatures */
			continue;
		}
		FUNC3(
			("shared_region: %p [%d(%s)] map(%p:'%s'): "
			 "mapping #%d/%d [0x%llx:0x%llx:0x%llx:0x%x:0x%x] "
			 "is not code-signed\n",
			 (void )FUNC7(FUNC10()),
			 p->p_pid, p->p_comm,
			 (void )FUNC7(vp), vp->v_name,
			 i, mappings_count,
			 mappings[i].sfm_address,
			 mappings[i].sfm_size,
			 mappings[i].sfm_file_offset,
			 mappings[i].sfm_max_prot,
			 mappings[i].sfm_init_prot));
		error = EINVAL;
		goto done;
	}

	/* get the process's shared region (setup in vm_map_exec()) */
	shared_region = FUNC21(FUNC9());
	if (shared_region == NULL) {
		FUNC3(
			("shared_region: %p [%d(%s)] map(%p:'%s'): "
			 "no shared region\n",
			 (void )FUNC7(FUNC10()),
			 p->p_pid, p->p_comm,
			 (void )FUNC7(vp), vp->v_name));
		error = EINVAL;
		goto done;
	}

	/* map the file into that shared region's submap */
	kr = FUNC20(shared_region,
				       mappings_count,
				       mappings,
				       file_control,
				       file_size,
				       (void *) p->p_fd->fd_rdir,
				       slide,
				       slide_start,
				       slide_size);
	if (kr != KERN_SUCCESS) {
		FUNC3(
			("shared_region: %p [%d(%s)] map(%p:'%s'): "
			 "vm_shared_region_map_file() failed kr=0x%x\n",
			 (void )FUNC7(FUNC10()),
			 p->p_pid, p->p_comm,
			 (void )FUNC7(vp), vp->v_name, kr));
		switch (kr) {
		case KERN_INVALID_ADDRESS:
			error = EFAULT;
			break;
		case KERN_PROTECTION_FAILURE:
			error = EPERM;
			break;
		case KERN_NO_SPACE:
			error = ENOMEM;
			break;
		case KERN_FAILURE:
		case KERN_INVALID_ARGUMENT:
		default:
			error = EINVAL;
			break;
		}
		goto done;
	}

	error = 0;

	FUNC24(vp);

	vp->v_flag |= VSHARED_DYLD;

	FUNC30(vp);

	/* update the vnode's access time */
	if (! (FUNC31(vp) & MNT_NOATIME)) {
		FUNC4(&va);
		FUNC14(&va.va_access_time);
		FUNC5(&va, va_access_time);
		FUNC28(vp, &va, FUNC17());
	}

	if (p->p_flag & P_NOSHLIB) {
		/* signal that this process is now using split libraries */
		FUNC1(~((uint32_t)P_NOSHLIB), &p->p_flag);
	}

done:
	if (vp != NULL) {
		/*
		 * release the vnode...
		 * ubc_map() still holds it for us in the non-error case
		 */
		(void) FUNC27(vp);
		vp = NULL;
	}
	if (fp != NULL) {
		/* release the file descriptor */
		FUNC11(p, fd, fp, 0);
		fp = NULL;
	}
	if (scdir_vp != NULL) {
		(void)FUNC27(scdir_vp);
		scdir_vp = NULL;
	}

	if (shared_region != NULL) {
		FUNC19(shared_region);
	}

	FUNC2(
		("shared_region: %p [%d(%s)] <- map\n",
		 (void )FUNC7(FUNC10()),
		 p->p_pid, p->p_comm));

	return error;
}