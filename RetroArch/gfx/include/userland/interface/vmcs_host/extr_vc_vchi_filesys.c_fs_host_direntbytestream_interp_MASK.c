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
struct dirent {void* d_modtime; void* d_attrib; void* d_size; int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_NAME_MAX_SIZE ; 
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int) ; 

__attribute__((used)) static void FUNC3(struct dirent *d, void *buffer)
{
   char *buf = (char*)buffer;

   // Read d_name (D_NAME_MAX_SIZE chars)
   FUNC1(&d->d_name, buf, D_NAME_MAX_SIZE);
   buf += D_NAME_MAX_SIZE;

   // Read d_size (unsigned int)
   FUNC2((void *)&d->d_size, buf, (int)sizeof(d->d_size));
   d->d_size = FUNC0(d->d_size);
   buf += 4;

   // Read d_attrib (int)
   FUNC2((void *)&d->d_attrib, buf, (int)sizeof(d->d_attrib));
   d->d_attrib = FUNC0(d->d_attrib);
   buf += 4;

   // Read d_modtime (time_t)
   FUNC2((void *)&d->d_modtime, buf, (int)sizeof(d->d_modtime));
   d->d_modtime = FUNC0(d->d_modtime);

   return;
}