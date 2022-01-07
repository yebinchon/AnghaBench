
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct global {scalar_t__ verbose; } ;
struct control {int dummy; } ;


 int control_end (struct control*) ;
 int control_init (struct control*,struct global*,char const*,char const*) ;
 int fprintf (int ,char*,char const*,char const*) ;
 int read_png (struct control*) ;
 int stderr ;

__attribute__((used)) static int
one_file(struct global *global, const char *file_name, const char *out_name)
{
   int rc;
   struct control control;

   if (global->verbose)
      fprintf(stderr, "FILE %s -> %s\n", file_name,
         out_name ? out_name : "<none>");




   rc = control_init(&control, global, file_name, out_name);

   if (rc == 0)
      rc = read_png(&control);

   rc |= control_end(&control);

   return rc;
}
