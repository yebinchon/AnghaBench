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
typedef  int u8 ;
struct TYPE_3__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ IOCheck_struct ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/ * scsp_isr ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*,int,int,int /*<<< orphan*/ *) ; 

int
FUNC3 (u8 slotnum, const char *filename)
{
  FILE *fp;
  int i;
  IOCheck_struct check = { 0, 0 };

  if ((fp = FUNC1 (filename, "wb")) == NULL)
    return -1;

  for (i = (slotnum * 0x20); i < ((slotnum+1) * 0x20); i += 2)
    {
#ifdef WORDS_BIGENDIAN
      ywrite (&check, (void *)&scsp_isr[i ^ 2], 1, 2, fp);
#else
      FUNC2 (&check, (void *)&scsp_isr[(i + 1) ^ 2], 1, 1, fp);
      FUNC2 (&check, (void *)&scsp_isr[i ^ 2], 1, 1, fp);
#endif
    }

  FUNC0 (fp);
  return 0;
}