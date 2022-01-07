
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _fdt_find_string (char*,int,char const*) ;
 int _fdt_splice_string (void*,int) ;
 int fdt_off_dt_strings (void*) ;
 int fdt_size_dt_strings (void*) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int _fdt_find_add_string(void *fdt, const char *s)
{
 char *strtab = (char *)fdt + fdt_off_dt_strings(fdt);
 const char *p;
 char *new;
 int len = strlen(s) + 1;
 int err;

 p = _fdt_find_string(strtab, fdt_size_dt_strings(fdt), s);
 if (p)

  return (p - strtab);

 new = strtab + fdt_size_dt_strings(fdt);
 err = _fdt_splice_string(fdt, len);
 if (err)
  return err;

 memcpy(new, s, len);
 return (new - strtab);
}
