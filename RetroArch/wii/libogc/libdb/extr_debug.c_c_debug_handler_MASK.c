#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int s32 ;
struct TYPE_12__ {scalar_t__ SRR0; int /*<<< orphan*/  SRR1; int /*<<< orphan*/  FPSCR; int /*<<< orphan*/  XER; int /*<<< orphan*/  CTR; int /*<<< orphan*/  LR; int /*<<< orphan*/  CR; scalar_t__ FPR; scalar_t__ GPR; } ;
typedef  TYPE_1__ frame_context ;
struct TYPE_13__ {scalar_t__ (* open ) (TYPE_2__*) ;int /*<<< orphan*/  (* close ) (TYPE_2__*) ;int /*<<< orphan*/  (* wait ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BUFMAX ; 
 int /*<<< orphan*/  MSR_SE ; 
 scalar_t__ __breakinst ; 
 TYPE_2__* current_device ; 
 TYPE_1__ current_thread_registers ; 
 int dbg_active ; 
 int dbg_instep ; 
 int FUNC0 () ; 
 int FUNC1 (int,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (char**,int*) ; 
 int FUNC7 (char*) ; 
 char* FUNC8 (char*,void*,int) ; 
 int FUNC9 (int*,int*,char**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int* remcomInBuffer ; 
 char* remcomOutBuffer ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC18 (int*,int*) ; 

void FUNC19(frame_context *frame)
{
	char *ptr;
	s32 addr,len;
	s32 thread,current_thread;
	s32 host_has_detached;
	frame_context *regptr;

	thread = FUNC0();
	current_thread = thread;

	if(current_device->open(current_device)<0) return;

	if(dbg_active) {
		FUNC3(frame,thread);
		FUNC11(remcomOutBuffer);
	}

	if(frame->SRR0==(u32)__breakinst) frame->SRR0 += 4;

	host_has_detached = 0;
	while(!host_has_detached) {
		remcomOutBuffer[0]= 0;
		FUNC5(remcomInBuffer);
		switch(remcomInBuffer[0]) {
			case '?':
				FUNC3(frame,thread);
				break;
			case 'D':
				dbg_instep = 0;
				dbg_active = 0;
				frame->SRR1 &= ~MSR_SE;
				FUNC13(remcomOutBuffer,"OK");
				host_has_detached = 1;
				break;
			case 'k':
				dbg_instep = 0;
				dbg_active = 0;
				frame->SRR1 &= ~MSR_SE;
				frame->SRR0 = 0x80001800;
				host_has_detached = 1;
				goto exit;
			case 'g':
				regptr = frame;
				ptr = remcomOutBuffer;
				if(current_thread!=thread) regptr = &current_thread_registers;

				ptr = FUNC8(ptr,(char*)regptr->GPR,32*4);
				ptr = FUNC8(ptr,(char*)regptr->FPR,32*8);
				ptr = FUNC8(ptr,(char*)&regptr->SRR0,4);
				ptr = FUNC8(ptr,(char*)&regptr->SRR1,4);
				ptr = FUNC8(ptr,(char*)&regptr->CR,4);
				ptr = FUNC8(ptr,(char*)&regptr->LR,4);
				ptr = FUNC8(ptr,(char*)&regptr->CTR,4);
				ptr = FUNC8(ptr,(char*)&regptr->XER,4);
				ptr = FUNC8(ptr,(char*)&regptr->FPSCR,4);
				break;
			case 'm':
				ptr = &remcomInBuffer[1];
				if(FUNC6(&ptr,&addr) && ((addr&0xC0000000)==0xC0000000 || (addr&0xC0000000)==0x80000000)
					&& *ptr++==','
					&& FUNC6(&ptr,&len) && len<=((BUFMAX - 4)/2))
					FUNC8(remcomOutBuffer,(void*)addr,len);
				else
					FUNC13(remcomOutBuffer,"E00");
				break;
			case 'q':
				FUNC10(remcomInBuffer,remcomOutBuffer,thread);
				break;
			case 'c':
				dbg_instep = 0;
				dbg_active = 1;
				frame->SRR1 &= ~MSR_SE;
				current_device->wait(current_device);
				goto exit;
			case 's':
				dbg_instep = 1;
				dbg_active = 1;
				frame->SRR1 |= MSR_SE;
				current_device->wait(current_device);
				goto exit;
			case 'z':
				{
					s32 ret,type;
					u32 len;
					char *addr;

					ret = FUNC9(remcomInBuffer,&type,&addr,&len);
					if(!ret) {
						FUNC13(remcomOutBuffer,"E01");
						break;
					}
					if(type!=0) break;

					if(len<4) {
						FUNC13(remcomOutBuffer,"E02");
						break;
					}

					ret = FUNC12(addr);
					if(!ret) {
						FUNC13(remcomOutBuffer,"E03");
						break;
					}
					FUNC13(remcomOutBuffer,"OK");
				}
				break;
			case 'H':
				if(remcomInBuffer[1]=='g')
				{
					s32 tmp,ret;

					if(FUNC18(&remcomInBuffer[2],&tmp)==NULL) {
						FUNC13(remcomOutBuffer,"E01");
						break;
					}
					if(!tmp) tmp = thread;
					if(tmp==current_thread) {
						FUNC13(remcomOutBuffer,"OK");
						break;
					}

					if(current_thread!=thread) ret = FUNC4(current_thread,&current_thread_registers);
					if(tmp!=thread) {
						ret = FUNC1(tmp,&current_thread_registers);
						if(!ret) {
							FUNC13(remcomOutBuffer,"E02");
							break;
						}
					}
					current_thread= tmp;
				}
				FUNC13(remcomOutBuffer,"OK");
				break;
			case 'T':
				{
					s32 tmp;

					if(FUNC18(&remcomInBuffer[1],&tmp)==NULL) {
						FUNC13(remcomOutBuffer,"E01");
						break;
					}
					if(FUNC2(tmp)==NULL) FUNC13(remcomOutBuffer,"E02");
					else FUNC13(remcomOutBuffer,"OK");
				}
				break;
			case 'Z':
				{
					s32 ret,type;
					u32 len;
					char *addr;

					ret = FUNC9(remcomInBuffer,&type,&addr,&len);
					if(!ret) {
						FUNC13(remcomOutBuffer,"E01");
						break;
					}
					if(type!=0) {
						FUNC13(remcomOutBuffer,"E02");
						break;
					}
					if(len<4) {
						FUNC13(remcomOutBuffer,"E03");
						break;
					}

					ret = FUNC7(addr);
					if(!ret) {
						FUNC13(remcomOutBuffer,"E04");
						break;
					}
					FUNC13(remcomOutBuffer,"OK");
				}
				break;
		}
		FUNC11(remcomOutBuffer);
	}
	current_device->close(current_device);
exit:
	return;
}