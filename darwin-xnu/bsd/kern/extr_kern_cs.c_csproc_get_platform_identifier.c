
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct proc {int p_textoff; int * p_textvp; } ;


 int csvnode_get_platform_identifier (int *,int ) ;

uint8_t
csproc_get_platform_identifier(struct proc *p)
{
 if (((void*)0) == p->p_textvp)
  return 0;

 return csvnode_get_platform_identifier(p->p_textvp, p->p_textoff);
}
