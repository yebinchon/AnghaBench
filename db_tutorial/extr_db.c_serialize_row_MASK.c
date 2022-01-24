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
struct TYPE_3__ {int /*<<< orphan*/  email; int /*<<< orphan*/  username; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ Row ;

/* Variables and functions */
 int EMAIL_OFFSET ; 
 int /*<<< orphan*/  EMAIL_SIZE ; 
 int ID_OFFSET ; 
 int /*<<< orphan*/  ID_SIZE ; 
 int USERNAME_OFFSET ; 
 int /*<<< orphan*/  USERNAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(Row* source, void* destination) {
  FUNC0(destination + ID_OFFSET, &(source->id), ID_SIZE);
  FUNC0(destination + USERNAME_OFFSET, &(source->username), USERNAME_SIZE);
  FUNC0(destination + EMAIL_OFFSET, &(source->email), EMAIL_SIZE);
}