
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccchacha20poly1305_info {int dummy; } ;
struct TYPE_2__ {struct ccchacha20poly1305_info const* (* info ) () ;} ;


 TYPE_1__* fns () ;
 struct ccchacha20poly1305_info const* stub1 () ;

__attribute__((used)) static const struct ccchacha20poly1305_info *info(void)
{
    return fns()->info();
}
