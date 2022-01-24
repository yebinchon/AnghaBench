#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int /*<<< orphan*/ * uio_t ;
typedef  int /*<<< orphan*/  uio_buf ;
typedef  int /*<<< orphan*/  uint8_t ;
struct dirent {scalar_t__ d_ino; int d_namlen; char* d_name; int d_reclen; } ;
typedef  scalar_t__ errno_t ;
struct TYPE_9__ {scalar_t__ v_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ EBUSY ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ ENOTEMPTY ; 
 int /*<<< orphan*/  FREAD ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int UIO_BUFF_SIZE ; 
 int /*<<< orphan*/  UIO_READ ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int VNODE_REMOVE_NO_AUDIT_PATH ; 
 int VNODE_REMOVE_SKIP_NAMESPACE_EVENT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ VT_HFS ; 
 scalar_t__ VT_NFS ; 
 int /*<<< orphan*/  caddr_t ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (TYPE_1__*) ; 

errno_t FUNC18(vnode_t vp , vfs_context_t ctx, int * restart_flag) 
{

#define UIO_BUFF_SIZE 2048
	uio_t auio = NULL;
	int eofflag, siz = UIO_BUFF_SIZE, nentries = 0;
	int open_flag = 0, full_erase_flag = 0;
	char uio_buf[ FUNC3(1) ];
	char *rbuf = NULL;
   	void *dir_pos;
	void *dir_end;
	struct dirent *dp;
	errno_t error;

	error = FUNC17(vp);

	/*
	 * restart_flag is set so that the calling rmdir sleeps and resets
	 */
	if (error == EBUSY)
		*restart_flag = 1;
	if (error != 0)
		return (error);

	/*
	 * set up UIO
	 */
	FUNC2(rbuf, caddr_t, siz, M_TEMP, M_WAITOK);
	if (rbuf)
		auio = FUNC9(1, 0, UIO_SYSSPACE, UIO_READ,
				&uio_buf[0], sizeof(uio_buf));
	if (!rbuf || !auio) {
		error = ENOMEM;
		goto outsc;
	}

	FUNC14(auio,0);

	eofflag = 0;

	if ((error = FUNC5(vp, FREAD, ctx))) 
		goto outsc; 	
	else
		open_flag = 1;

	/*
	 * First pass checks if all files are appleDouble files.
	 */

	do {
		siz = UIO_BUFF_SIZE;
		FUNC12(auio, FUNC11(auio), UIO_SYSSPACE, UIO_READ);
		FUNC8(auio, FUNC0(rbuf), UIO_BUFF_SIZE);

		if((error = FUNC6(vp, auio, 0, &eofflag, &nentries, ctx)))
			goto outsc;

		if (FUNC13(auio) != 0) 
			siz -= FUNC13(auio);

		/*
		 * Iterate through directory
		 */
		dir_pos = (void*) rbuf;
		dir_end = (void*) (rbuf + siz);
		dp = (struct dirent*) (dir_pos);

		if (dir_pos == dir_end)
			eofflag = 1;

		while (dir_pos < dir_end) {
			/*
			 * Check for . and .. as well as directories
			 */
			if (dp->d_ino != 0 && 
					!((dp->d_namlen == 1 && dp->d_name[0] == '.') ||
					    (dp->d_namlen == 2 && dp->d_name[0] == '.' && dp->d_name[1] == '.'))) {
				/*
				 * Check for irregular files and ._ files
				 * If there is a ._._ file abort the op
				 */
				if ( dp->d_namlen < 2 ||
						FUNC7(dp->d_name,"._",2) ||
						(dp->d_namlen >= 4 && !FUNC7(&(dp->d_name[2]), "._",2))) {
					error = ENOTEMPTY;
					goto outsc;
				}
			}
			dir_pos = (void*) ((uint8_t*)dir_pos + dp->d_reclen);
			dp = (struct dirent*)dir_pos;
		}
		
		/*
		 * workaround for HFS/NFS setting eofflag before end of file 
		 */
		if (vp->v_tag == VT_HFS && nentries > 2)
			eofflag=0;

		if (vp->v_tag == VT_NFS) {
			if (eofflag && !full_erase_flag) {
				full_erase_flag = 1;
				eofflag = 0;
				FUNC12(auio, 0, UIO_SYSSPACE, UIO_READ);
			}
			else if (!eofflag && full_erase_flag)
				full_erase_flag = 0;
		}

	} while (!eofflag);
	/*
	 * If we've made it here all the files in the dir are ._ files.
	 * We can delete the files even though the node is suspended
	 * because we are the owner of the file.
	 */

	FUNC12(auio, 0, UIO_SYSSPACE, UIO_READ);
	eofflag = 0;
	full_erase_flag = 0;

	do {
		siz = UIO_BUFF_SIZE;
		FUNC12(auio, FUNC11(auio), UIO_SYSSPACE, UIO_READ);
		FUNC8(auio, FUNC0(rbuf), UIO_BUFF_SIZE);

		error = FUNC6(vp, auio, 0, &eofflag, &nentries, ctx);

		if (error != 0) 
			goto outsc;

		if (FUNC13(auio) != 0) 
			siz -= FUNC13(auio);

		/*
		 * Iterate through directory
		 */
		dir_pos = (void*) rbuf;
		dir_end = (void*) (rbuf + siz);
		dp = (struct dirent*) dir_pos;
		
		if (dir_pos == dir_end)
			eofflag = 1;
	
		while (dir_pos < dir_end) {
			/*
			 * Check for . and .. as well as directories
			 */
			if (dp->d_ino != 0 && 
					!((dp->d_namlen == 1 && dp->d_name[0] == '.') ||
					    (dp->d_namlen == 2 && dp->d_name[0] == '.' && dp->d_name[1] == '.'))
					  ) {
	
				error = FUNC15(ctx, vp,
				    FUNC0(dp->d_name), UIO_SYSSPACE,
				    VNODE_REMOVE_SKIP_NAMESPACE_EVENT |
				    VNODE_REMOVE_NO_AUDIT_PATH);

				if (error &&  error != ENOENT) {
					goto outsc;
				}

			}
			dir_pos = (void*) ((uint8_t*)dir_pos + dp->d_reclen);
			dp = (struct dirent*)dir_pos;
		}
		
		/*
		 * workaround for HFS/NFS setting eofflag before end of file 
		 */
		if (vp->v_tag == VT_HFS && nentries > 2)
			eofflag=0;

		if (vp->v_tag == VT_NFS) {
			if (eofflag && !full_erase_flag) {
				full_erase_flag = 1;
				eofflag = 0;
				FUNC12(auio, 0, UIO_SYSSPACE, UIO_READ);
			}
			else if (!eofflag && full_erase_flag)
				full_erase_flag = 0;
		}

	} while (!eofflag);


	error = 0;

outsc:
	if (open_flag)
		FUNC4(vp, FREAD, ctx);

	if (auio)
		FUNC10(auio);
	FUNC1(rbuf, M_TEMP);

	FUNC16(vp);


	return(error);

}