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

/* Variables and functions */
 int CIN_loop ; 
 int CIN_silent ; 
 int FUNC0 (char const*,float,float,float,float,int) ; 

__attribute__((used)) static int FUNC1(const char *name, float x, float y, float w, float h) {
  return FUNC0(name, x, y, w, h, (CIN_loop | CIN_silent));
}