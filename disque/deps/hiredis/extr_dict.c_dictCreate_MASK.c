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
typedef  int /*<<< orphan*/  dictType ;
typedef  int /*<<< orphan*/  dict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static dict *FUNC2(dictType *type, void *privDataPtr) {
    dict *ht = FUNC1(sizeof(*ht));
    FUNC0(ht,type,privDataPtr);
    return ht;
}