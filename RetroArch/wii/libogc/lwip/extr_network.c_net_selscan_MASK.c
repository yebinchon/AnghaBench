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
struct netsocket {scalar_t__ sendevt; scalar_t__ rcvevt; scalar_t__ lastdata; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct netsocket* FUNC3 (scalar_t__) ; 

__attribute__((used)) static s32 FUNC4(s32 maxfdp1,fd_set *readset,fd_set *writeset,fd_set *exceptset)
{
	s32 i,nready = 0;
	fd_set lreadset,lwriteset,lexceptset;
	struct netsocket *sock;

	FUNC2(&lreadset);
	FUNC2(&lwriteset);
	FUNC2(&lexceptset);

	for(i=0;i<maxfdp1;i++) {
		if(FUNC0(i,readset)) {
			sock = FUNC3(i);
			if(sock && (sock->lastdata || sock->rcvevt)) {
				FUNC1(i,&lreadset);
				nready++;
			}
		}
		if(FUNC0(i,writeset)) {
			sock = FUNC3(i);
			if(sock && sock->sendevt) {
				FUNC1(i,&lwriteset);
				nready++;
			}
		}
	}
	*readset = lreadset;
	*writeset = lwriteset;
	FUNC2(exceptset);

	return nready;
}