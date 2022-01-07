
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;


 int panic (char*,int) ;

__attribute__((used)) static int
mach_to_bsd_rv(int mach_rv)
{
 int bsd_rv = 0;

 switch (mach_rv) {
 case 128:
  bsd_rv = 0;
  break;
 case 129:
  bsd_rv = EINVAL;
  break;
 default:
  panic("unknown error %#x", mach_rv);
 }

 return bsd_rv;
}
