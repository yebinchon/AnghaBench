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
struct TYPE_3__ {int /*<<< orphan*/  zPath; } ;
typedef  TYPE_1__ unixFile ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_IOERR_CLOSE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(unixFile *pFile, int h, int lineno){
  if( FUNC0(h) ){
    FUNC1(SQLITE_IOERR_CLOSE, "close",
                       pFile ? pFile->zPath : 0, lineno);
  }
}