
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peer {int disc_cb_arg; int (* disc_cb ) (struct peer*,int,int ) ;scalar_t__ disc_prev_chr_val; } ;


 int stub1 (struct peer*,int,int ) ;

__attribute__((used)) static void
peer_disc_complete(struct peer *peer, int rc)
{
    peer->disc_prev_chr_val = 0;


    if (peer->disc_cb != ((void*)0)) {
        peer->disc_cb(peer, rc, peer->disc_cb_arg);
    }
}
