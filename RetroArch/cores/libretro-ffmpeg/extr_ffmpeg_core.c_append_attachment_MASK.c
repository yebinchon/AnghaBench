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
typedef  int /*<<< orphan*/  uint8_t ;
struct attachment {size_t size; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 struct attachment* attachments ; 
 int attachments_size ; 
 scalar_t__ FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (struct attachment*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static void FUNC3(const uint8_t *data, size_t size)
{
   attachments = (struct attachment*)FUNC1(
         attachments, (attachments_size + 1) * sizeof(*attachments));

   attachments[attachments_size].data = (uint8_t*)FUNC0(size);
   attachments[attachments_size].size = size;
   FUNC2(attachments[attachments_size].data, data, size);

   attachments_size++;
}