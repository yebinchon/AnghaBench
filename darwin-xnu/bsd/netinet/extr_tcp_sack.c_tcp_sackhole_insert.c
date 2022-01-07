
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tcp_seq ;
struct TYPE_2__ {struct sackhole* nexthole; } ;
struct tcpcb {TYPE_1__ sackhint; int snd_holes; } ;
struct sackhole {int rxmit_start; } ;


 int TAILQ_INSERT_AFTER (int *,struct sackhole*,struct sackhole*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct sackhole*,int ) ;
 int scblink ;
 int tcp_now ;
 struct sackhole* tcp_sackhole_alloc (struct tcpcb*,int ,int ) ;

__attribute__((used)) static struct sackhole *
tcp_sackhole_insert(struct tcpcb *tp, tcp_seq start, tcp_seq end,
      struct sackhole *after)
{
 struct sackhole *hole;


 hole = tcp_sackhole_alloc(tp, start, end);
 if (hole == ((void*)0))
  return ((void*)0);
 hole->rxmit_start = tcp_now;

 if (after != ((void*)0))
  TAILQ_INSERT_AFTER(&tp->snd_holes, after, hole, scblink);
 else
  TAILQ_INSERT_TAIL(&tp->snd_holes, hole, scblink);


 if (tp->sackhint.nexthole == ((void*)0))
  tp->sackhint.nexthole = hole;

 return(hole);
}
