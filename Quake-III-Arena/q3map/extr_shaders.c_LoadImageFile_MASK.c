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
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int FUNC3 (char*) ; 

byte* FUNC4(char *filename, qboolean *bTGA)
{
  byte *buffer = NULL;
  int nLen = 0;
  *bTGA = qtrue;
  if (FUNC0(filename))
  {
    FUNC1(filename, &buffer);
  }
#ifdef _WIN32
  else
  {
    PakLoadAnyFile(filename, &buffer);
  }
#endif
  if ( buffer == NULL)
  {
    nLen = FUNC3(filename);
    filename[nLen-3] = 'j';
    filename[nLen-2] = 'p';
    filename[nLen-1] = 'g';
    if (FUNC0(filename))
    {
      FUNC1(filename, &buffer);
    }
#ifdef _WIN32
    else
    {
      PakLoadAnyFile(filename, &buffer);
    }
#endif
    if ( buffer )
    {
      *bTGA = qfalse;
    }
  }
  return buffer;
}