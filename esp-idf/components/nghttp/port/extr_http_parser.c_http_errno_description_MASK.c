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
typedef  enum http_errno { ____Placeholder_http_errno } http_errno ;
struct TYPE_3__ {char const* description; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* http_strerror_tab ; 

const char *
FUNC2(enum http_errno err) {
  FUNC1(((size_t) err) < FUNC0(http_strerror_tab));
  return http_strerror_tab[err].description;
}