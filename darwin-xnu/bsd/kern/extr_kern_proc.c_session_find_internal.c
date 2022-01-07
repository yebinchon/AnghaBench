
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct session* le_next; } ;
struct session {scalar_t__ s_sid; TYPE_1__ s_hash; } ;
typedef scalar_t__ pid_t ;
struct TYPE_4__ {struct session* lh_first; } ;


 TYPE_2__* SESSHASH (scalar_t__) ;

struct session *
session_find_internal(pid_t sessid)
{
 struct session *sess;

 for (sess = SESSHASH(sessid)->lh_first; sess != 0; sess = sess->s_hash.le_next)
  if (sess->s_sid == sessid)
   return (sess);
 return (((void*)0));
}
