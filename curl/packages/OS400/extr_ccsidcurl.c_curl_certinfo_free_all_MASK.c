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
struct curl_certinfo {int num_of_certs; int /*<<< orphan*/ * certinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void
FUNC2(struct curl_certinfo *info)

{
  /* Free all memory used by certificate info. */
  if(info) {
    if(info->certinfo) {
      int i;

      for(i = 0; i < info->num_of_certs; i++)
        FUNC0(info->certinfo[i]);
      FUNC1((char *) info->certinfo);
    }
    FUNC1((char *) info);
  }
}