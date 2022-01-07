
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct uio {int dummy; } ;


 int uio_free (struct uio*) ;

void
free_uio_array(struct uio **uiop, u_int count)
{
 u_int i;

 for (i = 0; i < count; i++) {
  if (uiop[i] != ((void*)0))
   uio_free(uiop[i]);
 }
}
