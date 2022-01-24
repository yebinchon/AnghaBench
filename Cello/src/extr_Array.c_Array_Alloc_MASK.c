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
struct Header {int dummy; } ;
struct Array {int /*<<< orphan*/  type; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AllocData ; 
 size_t FUNC0 (struct Array*) ; 
 int /*<<< orphan*/  FUNC1 (struct Header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC3(struct Array* a, size_t i) {
  FUNC2((char*)a->data + FUNC0(a) * i, 0, FUNC0(a));
  struct Header* head = (struct Header*)((char*)a->data + FUNC0(a) * i);
  FUNC1(head, a->type, AllocData);
}