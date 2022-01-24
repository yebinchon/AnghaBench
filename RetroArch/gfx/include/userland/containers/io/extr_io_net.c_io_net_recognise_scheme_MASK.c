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
struct TYPE_3__ {char* scheme; int is_udp; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 TYPE_1__* recognised_schemes ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(const char *uri, bool *is_udp)
{
   size_t ii;
   const char *scheme;

   if (!uri)
      return false;

   for (ii = 0; ii < FUNC0(recognised_schemes); ii++)
   {
      scheme = recognised_schemes[ii].scheme;
      if (FUNC2(scheme, uri, FUNC1(scheme)) == 0)
      {
         *is_udp = recognised_schemes[ii].is_udp;
         return true;
      }
   }

   return false;
}