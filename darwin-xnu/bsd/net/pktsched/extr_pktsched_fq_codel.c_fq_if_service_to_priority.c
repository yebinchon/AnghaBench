
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int mbuf_svc_class_t ;
struct TYPE_3__ {int fqs_flags; } ;
typedef TYPE_1__ fq_if_t ;


 int FQS_DRIVER_MANAGED ;
 int FQ_IF_AV_INDEX ;
 int FQ_IF_BE_INDEX ;
 int FQ_IF_BK_INDEX ;
 int FQ_IF_BK_SYS_INDEX ;
 int FQ_IF_CTL_INDEX ;
 int FQ_IF_OAM_INDEX ;
 int FQ_IF_RD_INDEX ;
 int FQ_IF_RV_INDEX ;
 int FQ_IF_SIG_INDEX ;
 int FQ_IF_VI_INDEX ;
 int FQ_IF_VO_INDEX ;
__attribute__((used)) static inline u_int32_t
fq_if_service_to_priority(fq_if_t *fqs, mbuf_svc_class_t svc)
{
 u_int32_t pri;

 if (fqs->fqs_flags & FQS_DRIVER_MANAGED) {
  switch (svc) {
  case 135:
  case 136:
   pri = FQ_IF_BK_INDEX;
   break;
  case 137:
  case 132:
  case 133:
   pri = FQ_IF_BE_INDEX;
   break;
  case 138:
  case 131:
  case 129:
  case 130:
   pri = FQ_IF_VI_INDEX;
   break;
  case 128:
  case 134:
   pri = FQ_IF_VO_INDEX;
   break;
  default:
   pri = FQ_IF_BE_INDEX;
   break;
  }
  return (pri);
 }


 switch (svc) {
 case 135:
  pri = FQ_IF_BK_SYS_INDEX;
  break;
 case 136:
  pri = FQ_IF_BK_INDEX;
  break;
 case 137:
  pri = FQ_IF_BE_INDEX;
  break;
 case 132:
  pri = FQ_IF_RD_INDEX;
  break;
 case 133:
  pri = FQ_IF_OAM_INDEX;
  break;
 case 138:
  pri = FQ_IF_AV_INDEX;
  break;
 case 131:
  pri = FQ_IF_RV_INDEX;
  break;
 case 129:
  pri = FQ_IF_VI_INDEX;
  break;
 case 130:
  pri = FQ_IF_SIG_INDEX;
  break;
 case 128:
  pri = FQ_IF_VO_INDEX;
  break;
 case 134:
  pri = FQ_IF_CTL_INDEX;
  break;
 default:
  pri = FQ_IF_BE_INDEX;
  break;
 }
 return (pri);
}
