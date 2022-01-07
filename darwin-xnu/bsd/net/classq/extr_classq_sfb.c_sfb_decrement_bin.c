
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct sfbbinstats {int dummy; } ;
struct sfb {int dummy; } ;


 int FALSE ;
 void sfb_adjust_bin (struct sfb*,struct sfbbinstats*,struct timespec*,struct timespec*,int ) ;

__attribute__((used)) static void
sfb_decrement_bin(struct sfb *sp, struct sfbbinstats *bin, struct timespec *ft,
    struct timespec *now)
{
 return (sfb_adjust_bin(sp, bin, ft, now, FALSE));
}
