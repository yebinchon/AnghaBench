#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  (* free ) (void*) ;} ;
typedef  TYPE_1__ retro_resampler_t ;
typedef  enum resampler_quality { ____Placeholder_resampler_quality } resampler_quality ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (void**,TYPE_1__ const**,int,double) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

bool FUNC3(void **re, const retro_resampler_t **backend,
      const char *ident, enum resampler_quality quality, double bw_ratio)
{
   if (*re && *backend)
      (*backend)->free(*re);

   *re      = NULL;
   *backend = FUNC0(ident);

   if (!FUNC1(re, backend, quality, bw_ratio))
   {
      if (!*re)
         *backend = NULL;
      return false;
   }

   return true;
}