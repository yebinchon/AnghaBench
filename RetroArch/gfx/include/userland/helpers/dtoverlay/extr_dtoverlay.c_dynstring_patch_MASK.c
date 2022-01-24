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
struct dynstring {int len; scalar_t__ buf; } ;

/* Variables and functions */
 int FUNC0 (struct dynstring*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static int FUNC3(struct dynstring *ds, int pos, int width,
                           const char *src, int len)
{
   int newlen = ds->len + (len - width);
   int err = FUNC0(ds, newlen + 1);
   if (!err)
   {
      if (width != len)
      {
         // Move any data following the patch
         FUNC2(ds->buf + pos + len, ds->buf + pos + width,
                 ds->len + 1 - (pos + width));
         ds->len = newlen;
      }
      FUNC1(ds->buf + pos, src, len);
   }
   return err;
}