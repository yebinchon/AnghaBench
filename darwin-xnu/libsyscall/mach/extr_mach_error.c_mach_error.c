
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_error_t ;
typedef int buf ;
typedef scalar_t__ boolean_t ;


 int _mach_snprintf (char*,int,char*,int ,char*,int ) ;
 int fprintf_stderr (char*,char const*,char*) ;
 char* mach_error_string_int (int ,scalar_t__*) ;
 int mach_error_type (int ) ;

void
mach_error(const char *str, mach_error_t err)
{
 char *err_str;
 char buf[1024];
 boolean_t diag;

 err_str = mach_error_string_int(err, &diag);

 if (diag) {
  _mach_snprintf(buf, sizeof(buf), "%s %s (%x)", mach_error_type(err), err_str, err);
  err_str = buf;
 }

 fprintf_stderr("%s %s\n", str, err_str);
}
