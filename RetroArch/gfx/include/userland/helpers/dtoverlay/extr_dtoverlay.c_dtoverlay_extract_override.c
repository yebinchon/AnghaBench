
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fdt32_t ;


 int DTOVERRIDE_BOOLEAN ;
 int DTOVERRIDE_END ;
 int DTOVERRIDE_INTEGER ;
 int DTOVERRIDE_OVERLAY ;
 int DTOVERRIDE_STRING ;
 int FDT_ERR_BADPHANDLE ;
 int FDT_ERR_BADSTRUCTURE ;
 int atoi (char const*) ;
 int dtoverlay_debug (char*,char const*,int,char const*,...) ;
 int dtoverlay_error (char*,char const*) ;
 int dtoverlay_read_u32 (char const*,int ) ;
 char* memchr (char const*,int ,int) ;
 char const* strchr (char const*,char) ;
 int strcspn (char const*,char const*) ;

__attribute__((used)) static int dtoverlay_extract_override(const char *override_name,
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
      *namep = ((void*)0);
      return DTOVERRIDE_END;
   }


   if (len < (sizeof(fdt32_t) + 1 + 1))
   {
      dtoverlay_error("  override %s: data is truncated or mangled",
                      override_name);
      return -FDT_ERR_BADSTRUCTURE;
   }

   phandle = dtoverlay_read_u32(data, 0);
   *phandle_ptr = phandle;

   data += sizeof(fdt32_t);
   len -= sizeof(fdt32_t);

   override_end = memchr(data, 0, len);
   if (!override_end)
   {
      dtoverlay_error("  override %s: string is not NUL-terminated",
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

      *namep = prop_name;
      *namelenp = override_len;
      return DTOVERRIDE_OVERLAY;
   }

   name_len = strcspn(prop_name, offset_seps);

   *namep = prop_name;
   *namelenp = name_len;
   if (name_len < override_len)
   {

      char sep = prop_name[name_len];
      if (sep == '?')
      {

         *offp = 0;
         *sizep = 0;
         type = DTOVERRIDE_BOOLEAN;
         dtoverlay_debug("  override %s: boolean target %.*s",
                         override_name, name_len, prop_name);
      }
      else
      {

         *offp = atoi(prop_name + name_len + 1);
         *sizep = 1 << (strchr(offset_seps, sep) - offset_seps);
         type = DTOVERRIDE_INTEGER;
         dtoverlay_debug("  override %s: cell target %.*s @ offset %d (size %d)",
                         override_name, name_len, prop_name, *offp, *sizep);
      }
   }
   else
   {
      *offp = -1;
      *sizep = 0;
      type = DTOVERRIDE_STRING;
      dtoverlay_debug("  override %s: string target '%.*s'",
                      override_name, name_len, prop_name);
   }

   return type;
}
