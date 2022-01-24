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
typedef  enum MessageType { ____Placeholder_MessageType } MessageType ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  hDllInstance ; 

char *FUNC3(enum MessageType e){
	char *pTmp=(char*)FUNC2(sizeof(char),1024);
	FUNC1(hDllInstance,FUNC0()+e,pTmp,1024);
	return pTmp;
}