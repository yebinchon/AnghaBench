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
typedef  int /*<<< orphan*/  fdt32_t ;

/* Variables and functions */
 int DTOVERRIDE_BOOLEAN ; 
 int DTOVERRIDE_END ; 
 int DTOVERRIDE_INTEGER ; 
 int DTOVERRIDE_OVERLAY ; 
 int DTOVERRIDE_STRING ; 
 int FDT_ERR_BADPHANDLE ; 
 int FDT_ERR_BADSTRUCTURE ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ,int) ; 
 char const* FUNC5 (char const*,char) ; 
 int FUNC6 (char const*,char const*) ; 

__attribute__((used)) static int FUNC7(const char *override_name,
                                      int *phandle_ptr,
                                      const char **data_ptr, int *len_ptr,
                                      const char **namep, int *namelenp,
				      int *offp, int *sizep)
{
   const char *data;
   const char *prop_name, *override_end;
   int len, override_len, name_len, phandle;
   const char *offset_seps = ".;:#?";
   int type;

   data = *data_ptr;
   len = *len_ptr;
   if (len <= 0)
   {
      if (len < 0)
	 return len;
      *phandle_ptr = 0;
      *namep = NULL;
      return DTOVERRIDE_END;
   }

   // Check for space for a phandle, a terminating NUL and at least one char
   if (len < (sizeof(fdt32_t) + 1 + 1))
   {
      FUNC2("  override %s: data is truncated or mangled",
                      override_name);
      return -FDT_ERR_BADSTRUCTURE;
   }

   phandle = FUNC3(data, 0);
   *phandle_ptr = phandle;

   data += sizeof(fdt32_t);
   len -= sizeof(fdt32_t);

   override_end = FUNC4(data, 0, len);
   if (!override_end)
   {
      FUNC2("  override %s: string is not NUL-terminated",
                      override_name);
      return -FDT_ERR_BADSTRUCTURE;
   }

   prop_name = data;

   override_len = override_end - prop_name;
   *data_ptr = data + (override_len + 1);
   *len_ptr = len - (override_len + 1);

   if (phandle <= 0)
   {
      if (phandle < 0)
         return -FDT_ERR_BADPHANDLE;
      /* This is an "overlay" override, signalled using <0> as the phandle. */
      *namep = prop_name;
      *namelenp = override_len;
      return DTOVERRIDE_OVERLAY;
   }

   name_len = FUNC6(prop_name, offset_seps);

   *namep = prop_name;
   *namelenp = name_len;
   if (name_len < override_len)
   {
      /* There is a separator specified */
      char sep = prop_name[name_len];
      if (sep == '?')
      {
         /* The target is a boolean parameter (present->true, absent->false) */
         *offp = 0;
         *sizep = 0;
         type = DTOVERRIDE_BOOLEAN;
         FUNC1("  override %s: boolean target %.*s",
                         override_name, name_len, prop_name);
      }
      else
      {
         /* The target is a cell/integer */
         *offp = FUNC0(prop_name + name_len + 1);
         *sizep = 1 << (FUNC5(offset_seps, sep) - offset_seps);
         type = DTOVERRIDE_INTEGER;
         FUNC1("  override %s: cell target %.*s @ offset %d (size %d)",
                         override_name, name_len, prop_name, *offp, *sizep);
      }
   }
   else
   {
      *offp = -1;
      *sizep = 0;
      type = DTOVERRIDE_STRING;
      FUNC1("  override %s: string target '%.*s'",
                      override_name, name_len, prop_name);
   }

   return type;
}