
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BT_HDR ;


 int dispatch_reassembled (int *) ;
 int osi_free (int *) ;

__attribute__((used)) static void fragmenter_transmit_finished(BT_HDR *packet, bool all_fragments_sent)
{
    if (all_fragments_sent) {
        osi_free(packet);
    } else {
        dispatch_reassembled(packet);

    }
}
