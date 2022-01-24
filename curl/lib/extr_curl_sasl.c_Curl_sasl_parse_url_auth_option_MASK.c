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
struct SASL {unsigned int prefmech; scalar_t__ resetprefs; } ;
typedef  int /*<<< orphan*/  CURLcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLE_OK ; 
 int /*<<< orphan*/  CURLE_URL_MALFORMAT ; 
 unsigned int FUNC0 (char const*,size_t,size_t*) ; 
 scalar_t__ FALSE ; 
 unsigned int SASL_AUTH_DEFAULT ; 
 unsigned int SASL_AUTH_NONE ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,size_t) ; 

CURLcode FUNC2(struct SASL *sasl,
                                         const char *value, size_t len)
{
  CURLcode result = CURLE_OK;
  size_t mechlen;

  if(!len)
    return CURLE_URL_MALFORMAT;

  if(sasl->resetprefs) {
    sasl->resetprefs = FALSE;
    sasl->prefmech = SASL_AUTH_NONE;
  }

  if(!FUNC1(value, "*", len))
    sasl->prefmech = SASL_AUTH_DEFAULT;
  else {
    unsigned int mechbit = FUNC0(value, len, &mechlen);
    if(mechbit && mechlen == len)
      sasl->prefmech |= mechbit;
    else
      result = CURLE_URL_MALFORMAT;
  }

  return result;
}