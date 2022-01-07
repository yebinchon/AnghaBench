
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct newah {int dummy; } ;
struct TYPE_3__ {scalar_t__ proto; } ;
struct ipsecrequest {TYPE_2__* sav; TYPE_1__ saidx; } ;
struct ah_algorithm {int (* sumsiz ) (TYPE_2__*) ;} ;
struct ah {int dummy; } ;
struct TYPE_4__ {scalar_t__ state; int flags; int alg_auth; } ;


 scalar_t__ IPPROTO_AH ;
 scalar_t__ SADB_SASTATE_DYING ;
 scalar_t__ SADB_SASTATE_MATURE ;
 int SADB_X_EXT_OLD ;
 struct ah_algorithm* ah_algorithm_lookup (int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int panic (char*) ;
 int sadb_mutex ;
 int stub1 (TYPE_2__*) ;

size_t
ah_hdrsiz(struct ipsecrequest *isr)
{


 if (isr == ((void*)0))
  panic("ah_hdrsiz: NULL was passed.\n");

 if (isr->saidx.proto != IPPROTO_AH)
  panic("unsupported mode passed to ah_hdrsiz");
 return sizeof(struct newah) + 16;
}
