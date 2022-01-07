
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int read_errno; int write_errno; char* file_name; } ;
 int fprintf (int ,char*,char*,char const*,char const*,...) ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static void
emit_error(struct file *file, int code, const char *what)



{
   const char *reason;
   int err = 0;

   switch (code)
   {
      case 132: reason = "libpng warning:"; break;
      case 133: reason = "libpng error:"; break;
      case 128: reason = "zlib error:"; break;
      case 134: reason = "invalid"; break;
      case 131: reason = "read failure:";
                                  err = file->read_errno;
                                  break;
      case 129: reason = "write error";
                                  err = file->write_errno;
                                  break;
      case 130: reason = "unexpected error:";
                                  err = file->read_errno;
                                  if (err == 0)
                                     err = file->write_errno;
                                  break;
      default: reason = "INVALID (internal error):"; break;
   }

   if (err != 0)
      fprintf(stderr, "%s: %s %s [%s]\n", file->file_name, reason, what,
         strerror(err));

   else
      fprintf(stderr, "%s: %s %s\n", file->file_name, reason, what);
}
