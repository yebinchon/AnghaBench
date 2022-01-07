
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int offset; } ;
typedef TYPE_1__ const kernel_section_t ;
typedef int kernel_mach_header_t ;


 TYPE_1__ const* getsectbynamefromheader (int *,char const*,char const*) ;

uint32_t
getsectoffsetfromheader(
    kernel_mach_header_t *mhp,
    const char *segname,
    const char *sectname)
{
 const kernel_section_t *sp;

 sp = getsectbynamefromheader(mhp, segname, sectname);
 if(sp == (kernel_section_t *)0){
     return(0);
 }

 return sp->offset;
}
