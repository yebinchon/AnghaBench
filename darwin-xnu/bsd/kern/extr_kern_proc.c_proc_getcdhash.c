
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_textoff; int p_textvp; } ;


 int vn_getcdhash (int ,int ,unsigned char*) ;

int
proc_getcdhash(proc_t p, unsigned char *cdhash)
{
 return vn_getcdhash(p->p_textvp, p->p_textoff, cdhash);
}
