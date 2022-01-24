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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 scalar_t__ IDBASE ; 
 int O_NONBLOCK ; 
 int O_WRONLY ; 
 scalar_t__ SEXYAL_ID_DEFAULT ; 
 scalar_t__ SEXYAL_ID_UNUSED ; 
 scalar_t__ errno ; 
 int FUNC0 (int,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(uint64_t id)
{
 char fn[64];

 if(id==SEXYAL_ID_DEFAULT)
 {
  FUNC3(fn,"/dev/dsp");
  return(FUNC1(fn,O_WRONLY));
 }
 else if(id==SEXYAL_ID_UNUSED)
 {
  int x=-1;
  int dspfd;
  do 
  {
   FUNC3(fn,"/dev/dsp");
   if(x!=-1)
    FUNC2(fn,FUNC4(x));
   dspfd=FUNC1(fn,O_WRONLY|O_NONBLOCK);
   if(dspfd!=-1) break;
   x++;   
  } while(errno!=ENOENT);
  if(dspfd==-1) return(0);
  FUNC0(dspfd,F_SETFL,FUNC0(dspfd,F_GETFL)&~O_NONBLOCK);
  return(dspfd);
 }
 else
 {
  FUNC3(fn,"/dev/dsp");
  FUNC2(fn,FUNC4(id-IDBASE));
  return(FUNC1(fn,O_WRONLY));
 }
}