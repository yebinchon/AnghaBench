#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  QP; } ;
typedef  TYPE_1__ PPContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int,TYPE_1__ const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(const uint8_t src[], int stride, const PPContext *c)
{
    if( FUNC0(src, stride, c) ){
        return FUNC1(src, stride, c->QP);
    }else{
        return 2;
    }
}