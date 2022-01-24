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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  kqueue_id_t ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int EINVAL ; 
#define  PROC_INFO_CALL_CANUSEFGHW 141 
#define  PROC_INFO_CALL_DIRTYCONTROL 140 
#define  PROC_INFO_CALL_KERNMSGBUF 139 
#define  PROC_INFO_CALL_LISTCOALITIONS 138 
#define  PROC_INFO_CALL_LISTPIDS 137 
#define  PROC_INFO_CALL_PIDDYNKQUEUEINFO 136 
#define  PROC_INFO_CALL_PIDFDINFO 135 
#define  PROC_INFO_CALL_PIDFILEPORTINFO 134 
#define  PROC_INFO_CALL_PIDINFO 133 
#define  PROC_INFO_CALL_PIDORIGINATORINFO 132 
#define  PROC_INFO_CALL_PIDRUSAGE 131 
#define  PROC_INFO_CALL_SETCONTROL 130 
#define  PROC_INFO_CALL_TERMINATE 129 
#define  PROC_INFO_CALL_UDATA_INFO 128 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int,int /*<<< orphan*/ *) ; 
 int FUNC13 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int 
FUNC14(int callnum, int pid, int flavor, uint64_t arg, user_addr_t buffer, uint32_t  buffersize, int32_t * retval)
{

	switch(callnum) {
		case PROC_INFO_CALL_LISTPIDS:
			/* pid contains type and flavor contains typeinfo */
			return(FUNC4(pid, flavor, buffer, buffersize, retval));
		case PROC_INFO_CALL_PIDINFO:
			return(FUNC9(pid, flavor, arg, buffer, buffersize, retval));
		case PROC_INFO_CALL_PIDFDINFO:
			return(FUNC7(pid, flavor, (int)arg, buffer, buffersize, retval));
		case PROC_INFO_CALL_KERNMSGBUF:
			return(FUNC2(buffer, buffersize, retval));
		case PROC_INFO_CALL_SETCONTROL:
			return(FUNC11(pid, flavor, arg, buffer, buffersize, retval));
		case PROC_INFO_CALL_PIDFILEPORTINFO:
			return(FUNC8(pid, flavor, (mach_port_name_t)arg, buffer, buffersize, retval));
		case PROC_INFO_CALL_TERMINATE:
			return(FUNC12(pid, retval));
		case PROC_INFO_CALL_DIRTYCONTROL:
			return(FUNC1(pid, flavor, arg, retval));
		case PROC_INFO_CALL_PIDRUSAGE:
			return (FUNC5(pid, flavor, buffer, retval));
		case PROC_INFO_CALL_PIDORIGINATORINFO:
			return (FUNC10(pid, flavor, buffer, buffersize, retval));
		case PROC_INFO_CALL_LISTCOALITIONS:
			return FUNC3(pid /* flavor */, flavor /* coaltype */, buffer,
						   buffersize, retval);
		case PROC_INFO_CALL_CANUSEFGHW:
			return FUNC0(pid, buffer, buffersize, retval);
		case PROC_INFO_CALL_PIDDYNKQUEUEINFO:
			return FUNC6(pid, flavor, (kqueue_id_t)arg, buffer, buffersize, retval);
#if !CONFIG_EMBEDDED
		case PROC_INFO_CALL_UDATA_INFO:
			return FUNC13(pid, flavor, buffer, buffersize, retval);
#endif /* !CONFIG_EMBEDDED */
		default:
			return EINVAL;
	}

	return(EINVAL);
}