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
struct gdbstub_threadinfo {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int QM_MAXTHREADS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,struct gdbstub_threadinfo*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 
 char* FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,struct gdbstub_threadinfo*) ; 
 int FUNC5 (char const*,int*,int*,int*) ; 
 int FUNC6 (char const*,int*,int*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (char*,int) ; 

__attribute__((used)) static void FUNC10(const char *inp,char *outp,s32 thread)
{
	char *optr;

	switch(inp[1]) {
		case 'C':
			optr = outp;
			*optr++ = 'Q';
			*optr++ = 'C';
			optr = FUNC9(optr,thread);
			*optr++ = 0;
			break;
		case 'P':
			{
				s32 ret,rthread,mask;
				struct gdbstub_threadinfo info;

				ret = FUNC6(inp,&mask,&rthread);
				if(!ret || mask&~0x1f) {
					FUNC8(outp,"E01");
					break;
				}

				ret = FUNC1(rthread,&info);
				if(!ret) {
					FUNC8(outp,"E02");
					break;
				}
				FUNC4(outp,mask,rthread,&info);
			}
			break;
		case 'L':
			{
				s32 ret,athread,first,max_cnt,i,done,rthread;

				ret = FUNC5(inp,&first,&max_cnt,&athread);
				if(!ret) {
					FUNC8(outp,"E02");
					break;
				}
				if(max_cnt==0) {
					FUNC8(outp,"E02");
					break;
				}
				if(max_cnt>QM_MAXTHREADS) max_cnt = QM_MAXTHREADS;

				optr = FUNC7(outp);
				if(first) rthread = 0;
				else rthread = athread;

				done = 0;
				for(i=0;i<max_cnt;i++) {
					rthread = FUNC0(rthread);
					if(rthread<=0) {
						done = 1;
						break;
					}
					optr = FUNC3(optr,rthread);
				}
				*optr = 0;
				FUNC2(outp,i,done,athread);
			}
			break;
		default:
			break;
	}
}