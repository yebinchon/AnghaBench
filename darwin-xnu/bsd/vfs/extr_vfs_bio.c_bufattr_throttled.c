
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bufattr_t ;


 int GET_BUFATTR_IO_TIER (int ) ;

int
bufattr_throttled(bufattr_t bap) {
 return (GET_BUFATTR_IO_TIER(bap));
}
