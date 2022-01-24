#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ strip; } ;
struct TYPE_10__ {int sizelineinfo; int sizelocvars; int sizeupvalues; int /*<<< orphan*/ * upvalues; TYPE_1__* locvars; int /*<<< orphan*/  lineinfo; } ;
struct TYPE_9__ {int startpc; int endpc; int /*<<< orphan*/  varname; } ;
typedef  TYPE_2__ Proto ;
typedef  TYPE_3__ DumpState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,TYPE_3__*) ; 

__attribute__((used)) static void FUNC3(const Proto* f, DumpState* D)
{
 int i,n;
 n= (D->strip) ? 0 : f->sizelineinfo;
 FUNC2(f->lineinfo,n,sizeof(int),D);
 n= (D->strip) ? 0 : f->sizelocvars;
 FUNC0(n,D);
 for (i=0; i<n; i++)
 {
  FUNC1(f->locvars[i].varname,D);
  FUNC0(f->locvars[i].startpc,D);
  FUNC0(f->locvars[i].endpc,D);
 }
 n= (D->strip) ? 0 : f->sizeupvalues;
 FUNC0(n,D);
 for (i=0; i<n; i++) FUNC1(f->upvalues[i],D);
}