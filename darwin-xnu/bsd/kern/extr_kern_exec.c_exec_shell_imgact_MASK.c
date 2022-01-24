#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct image_params {char* ip_vdata; int ip_flags; scalar_t__ ip_origcputype; int ip_interp_sugid_fd; char* ip_interp_buffer; scalar_t__ ip_vp; int /*<<< orphan*/  ip_vfs_context; TYPE_1__* ip_origvattr; } ;
struct fileproc {TYPE_2__* f_fglob; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_4__ {scalar_t__ fg_data; int /*<<< orphan*/ * fg_ops; int /*<<< orphan*/  fg_flag; } ;
struct TYPE_3__ {int va_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOEXEC ; 
 int /*<<< orphan*/  FREAD ; 
 int IMGPF_INTERPRET ; 
 size_t IMG_SHSIZE ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int VSGID ; 
 int VSUID ; 
 int /*<<< orphan*/  FUNC3 (struct image_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct image_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct fileproc**,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,struct fileproc*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ sugid_scripts ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  vnops ; 

__attribute__((used)) static int
FUNC12(struct image_params *imgp)
{
	char *vdata = imgp->ip_vdata;
	char *ihp;
	char *line_startp, *line_endp;
	char *interp;

	/*
	 * Make sure it's a shell script.  If we've already redirected
	 * from an interpreted file once, don't do it again.
	 */
	if (vdata[0] != '#' ||
	    vdata[1] != '!' ||
	    (imgp->ip_flags & IMGPF_INTERPRET) != 0) {
		return (-1);
	}

	if (imgp->ip_origcputype != 0) {
		/* Fat header previously matched, don't allow shell script inside */
		return (-1);
	}

	imgp->ip_flags |= IMGPF_INTERPRET;
	imgp->ip_interp_sugid_fd = -1;
	imgp->ip_interp_buffer[0] = '\0';

	/* Check to see if SUGID scripts are permitted.  If they aren't then
	 * clear the SUGID bits.
	 * imgp->ip_vattr is known to be valid.
	 */
	if (sugid_scripts == 0) {
		imgp->ip_origvattr->va_mode &= ~(VSUID | VSGID);
	}

	/* Try to find the first non-whitespace character */
	for( ihp = &vdata[2]; ihp < &vdata[IMG_SHSIZE]; ihp++ ) {
		if (FUNC1(*ihp)) {
			/* Did not find interpreter, "#!\n" */
			return (ENOEXEC);
		} else if (FUNC2(*ihp)) {
			/* Whitespace, like "#!    /bin/sh\n", keep going. */
		} else {
			/* Found start of interpreter */
			break;
		}
	}

	if (ihp == &vdata[IMG_SHSIZE]) {
		/* All whitespace, like "#!           " */
		return (ENOEXEC);
	}

	line_startp = ihp;

	/* Try to find the end of the interpreter+args string */
	for ( ; ihp < &vdata[IMG_SHSIZE]; ihp++ ) {
		if (FUNC1(*ihp)) {
			/* Got it */
			break;
		} else {
			/* Still part of interpreter or args */
		}
	}

	if (ihp == &vdata[IMG_SHSIZE]) {
		/* A long line, like "#! blah blah blah" without end */
		return (ENOEXEC);
	}

	/* Backtrack until we find the last non-whitespace */
	while (FUNC1(*ihp) || FUNC2(*ihp)) {
		ihp--;
	}

	/* The character after the last non-whitespace is our logical end of line */
	line_endp = ihp + 1;

	/*
	 * Now we have pointers to the usable part of:
	 *
	 * "#!  /usr/bin/int first    second   third    \n"
	 *      ^ line_startp                       ^ line_endp
	 */

	/* copy the interpreter name */
	interp = imgp->ip_interp_buffer;
	for ( ihp = line_startp; (ihp < line_endp) && !FUNC2(*ihp); ihp++)
		*interp++ = *ihp;
	*interp = '\0';

	FUNC3(imgp);
	FUNC4(imgp, FUNC0(imgp->ip_interp_buffer),
							UIO_SYSSPACE, NULL);

	/* Copy the entire interpreter + args for later processing into argv[] */
	interp = imgp->ip_interp_buffer;
	for ( ihp = line_startp; (ihp < line_endp); ihp++)
		*interp++ = *ihp;
	*interp = '\0';

#if !SECURE_KERNEL
	/*
	 * If we have an SUID or SGID script, create a file descriptor
	 * from the vnode and pass /dev/fd/%d instead of the actual
	 * path name so that the script does not get opened twice
	 */
	if (imgp->ip_origvattr->va_mode & (VSUID | VSGID)) {
		proc_t p;
		struct fileproc *fp;
		int fd;
		int error;

		p = FUNC10(imgp->ip_vfs_context);
		error = FUNC5(p, &fp, &fd, imgp->ip_vfs_context);
		if (error)
			return(error);

		fp->f_fglob->fg_flag = FREAD;
		fp->f_fglob->fg_ops = &vnops;
		fp->f_fglob->fg_data = (caddr_t)imgp->ip_vp;
		
		FUNC7(p);
		FUNC9(p, fd, NULL);
		FUNC6(p, fd, fp, 1);
		FUNC8(p);
		FUNC11(imgp->ip_vp);

		imgp->ip_interp_sugid_fd = fd;
	}
#endif

	return (-3);
}