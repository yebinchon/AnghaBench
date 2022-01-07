
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* write_nb ) (void const*,int) ;} ;


 TYPE_1__ sndout_current ;
 int stub1 (void const*,int) ;

__attribute__((used)) static inline int sndout_write_nb(const void *data, int bytes)
{
 return sndout_current.write_nb(data, bytes);
}
