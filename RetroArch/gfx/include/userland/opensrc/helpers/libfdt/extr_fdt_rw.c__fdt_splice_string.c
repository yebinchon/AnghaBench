
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _fdt_splice (void*,void*,int ,int) ;
 int fdt_off_dt_strings (void*) ;
 int fdt_set_size_dt_strings (void*,int) ;
 int fdt_size_dt_strings (void*) ;

__attribute__((used)) static int _fdt_splice_string(void *fdt, int newlen)
{
 void *p = (char *)fdt
  + fdt_off_dt_strings(fdt) + fdt_size_dt_strings(fdt);
 int err;

 if ((err = _fdt_splice(fdt, p, 0, newlen)) != 0)
  return err;

 fdt_set_size_dt_strings(fdt, fdt_size_dt_strings(fdt) + newlen);
 return 0;
}
