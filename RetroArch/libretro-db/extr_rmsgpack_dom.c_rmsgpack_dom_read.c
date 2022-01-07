
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmsgpack_dom_value {int dummy; } ;
struct dom_reader_state {struct rmsgpack_dom_value** stack; scalar_t__ i; } ;
typedef int RFILE ;


 int dom_reader_callbacks ;
 int rmsgpack_dom_value_free (struct rmsgpack_dom_value*) ;
 int rmsgpack_read (int *,int *,struct dom_reader_state*) ;

int rmsgpack_dom_read(RFILE *fd, struct rmsgpack_dom_value *out)
{
   struct dom_reader_state s;
   int rv = 0;

   s.i = 0;
   s.stack[0] = out;

   rv = rmsgpack_read(fd, &dom_reader_callbacks, &s);

   if (rv < 0)
      rmsgpack_dom_value_free(out);

   return rv;
}
