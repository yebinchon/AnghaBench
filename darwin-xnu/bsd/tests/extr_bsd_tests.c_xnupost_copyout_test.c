
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xnupost_test_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int mach_vm_address_t ;
struct TYPE_3__ {int * xt_name; int xt_end_time; int xt_begin_time; int xt_expected_retval; int xt_retval; int xt_test_num; int xt_config; } ;


 int XNUPOST_TNAME_MAXLEN ;
 int copyout (int *,int,int) ;
 int strnlen (int *,int ) ;

int
xnupost_copyout_test(xnupost_test_t t, mach_vm_address_t outaddr)
{

 int kret = 0;
 uint32_t namelen = 0;

 kret = copyout(&t->xt_config, outaddr, sizeof(uint16_t));
 if (kret)
  return kret;
 outaddr += sizeof(uint16_t);

 kret = copyout(&t->xt_test_num, outaddr, sizeof(uint16_t));
 if (kret)
  return kret;
 outaddr += sizeof(uint16_t);

 kret = copyout(&t->xt_retval, outaddr, sizeof(uint32_t));
 if (kret)
  return kret;
 outaddr += sizeof(uint32_t);

 kret = copyout(&t->xt_expected_retval, outaddr, sizeof(uint32_t));
 if (kret)
  return kret;
 outaddr += sizeof(uint32_t);

 kret = copyout(&t->xt_begin_time, outaddr, sizeof(uint64_t));
 if (kret)
  return kret;
 outaddr += sizeof(uint64_t);

 kret = copyout(&t->xt_end_time, outaddr, sizeof(uint64_t));
 if (kret)
  return kret;
 outaddr += sizeof(uint64_t);

 namelen = strnlen(t->xt_name, XNUPOST_TNAME_MAXLEN);
 kret = copyout(t->xt_name, outaddr, namelen);
 if (kret)
  return kret;
 outaddr += namelen;

 return 0;
}
