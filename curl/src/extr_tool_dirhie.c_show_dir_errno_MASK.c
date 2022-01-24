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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  EACCES 132 
#define  EDQUOT 131 
#define  ENAMETOOLONG 130 
#define  ENOSPC 129 
#define  EROFS 128 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static void FUNC1(FILE *errors, const char *name)
{
  switch(errno) {
#ifdef EACCES
  case EACCES:
    FUNC0(errors, "You don't have permission to create %s.\n", name);
    break;
#endif
#ifdef ENAMETOOLONG
  case ENAMETOOLONG:
    FUNC0(errors, "The directory name %s is too long.\n", name);
    break;
#endif
#ifdef EROFS
  case EROFS:
    FUNC0(errors, "%s resides on a read-only file system.\n", name);
    break;
#endif
#ifdef ENOSPC
  case ENOSPC:
    FUNC0(errors, "No space left on the file system that will "
            "contain the directory %s.\n", name);
    break;
#endif
#ifdef EDQUOT
  case EDQUOT:
    FUNC0(errors, "Cannot create directory %s because you "
            "exceeded your quota.\n", name);
    break;
#endif
  default :
    FUNC0(errors, "Error creating directory %s.\n", name);
    break;
  }
}