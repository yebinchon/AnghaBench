#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct usbtxbuf {int /*<<< orphan*/ * rpData; } ;
struct pbuf {scalar_t__ len; int /*<<< orphan*/  payload; struct pbuf* next; } ;
typedef  scalar_t__ s32 ;
struct TYPE_2__ {int openstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PBUF_POOL ; 
 int /*<<< orphan*/  PBUF_RAW ; 
 size_t STACKSIZE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/ * __ppc_btstack2 ; 
 TYPE_1__ __usbdev ; 
 int /*<<< orphan*/  aclbufs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct usbtxbuf*) ; 
 struct pbuf* FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pbuf*) ; 
 scalar_t__ hci_acldata_handler ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static s32 FUNC7(s32 result,void *usrdata)
{
	u8 *ptr;
	u32 len;
	struct pbuf *p,*q;
	struct usbtxbuf *buf = (struct usbtxbuf*)usrdata;

	if(__usbdev.openstate!=0x0002) return 0;

	if(result>0) {
		len = result;
		p = FUNC4(PBUF_RAW,len,PBUF_POOL);
		if(p!=NULL) {
			ptr = buf->rpData;
			for(q=p;q!=NULL && len>0;q=q->next) {
				FUNC6(q->payload,ptr,q->len);
				ptr += q->len;
				len -= q->len;
			}

			FUNC1((u32)p,0,0,0,(u32)hci_acldata_handler,(u32)(&__ppc_btstack2[STACKSIZE]));
			FUNC5(p);
		} else
			FUNC0("__readbulkdataCB: Could not allocate memory for pbuf.\n");
	}
	FUNC3(&aclbufs,buf);

	return FUNC2();
}