#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ppbufw; int /*<<< orphan*/  wf; int /*<<< orphan*/  ppbufsec; scalar_t__ ToWritePos; } ;
typedef  int DWORD ;
typedef  TYPE_1__ DSFobby ;

/* Variables and functions */
 int /*<<< orphan*/  DSBPLAY_LOOPING ; 
 int DSBSTATUS_BUFFERLOST ; 
 int DSBSTATUS_PLAYING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(DSFobby *tmp)
{
 DWORD status=0;

 FUNC0(tmp->ppbufw, &status);
 if(status&DSBSTATUS_BUFFERLOST)
  FUNC2(tmp->ppbufw);

 if(!(status&DSBSTATUS_PLAYING))
 {
  tmp->ToWritePos=0;
  FUNC3(tmp->ppbufsec,0);
  FUNC4(tmp->ppbufw,&tmp->wf);
  FUNC1(tmp->ppbufw,0,0,DSBPLAY_LOOPING);
 }
}