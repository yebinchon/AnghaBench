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
struct Type {char* inst; } ;

/* Variables and functions */
 int CELLO_CACHE_NUM ; 

__attribute__((used)) static char* FUNC0(struct Type* t) {
  return t[(CELLO_CACHE_NUM / 3)+0].inst;
}