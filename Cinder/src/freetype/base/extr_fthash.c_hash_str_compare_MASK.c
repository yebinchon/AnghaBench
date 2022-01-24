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
struct TYPE_4__ {scalar_t__* str; } ;
typedef  TYPE_1__ FT_Hashkey ;
typedef  int FT_Bool ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static FT_Bool
  FUNC1( FT_Hashkey*  a,
                    FT_Hashkey*  b )
  {
    if ( a->str[0] == b->str[0]           &&
         FUNC0( a->str, b->str ) == 0 )
      return 1;

    return 0;
  }