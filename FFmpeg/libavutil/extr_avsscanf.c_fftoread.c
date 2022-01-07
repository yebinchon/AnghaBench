
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf_size; scalar_t__ buf; scalar_t__ rend; scalar_t__ rpos; } ;
typedef TYPE_1__ FFFILE ;



__attribute__((used)) static int fftoread(FFFILE *f)
{
    f->rpos = f->rend = f->buf + f->buf_size;
    return 0;
}
