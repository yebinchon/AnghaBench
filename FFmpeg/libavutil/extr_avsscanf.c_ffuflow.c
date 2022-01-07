
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* read ) (TYPE_1__*,unsigned char*,int) ;} ;
typedef TYPE_1__ FFFILE ;


 int EOF ;
 int fftoread (TYPE_1__*) ;
 int stub1 (TYPE_1__*,unsigned char*,int) ;

__attribute__((used)) static int ffuflow(FFFILE *f)
{
    unsigned char c;
    if (!fftoread(f) && f->read(f, &c, 1)==1) return c;
    return EOF;
}
