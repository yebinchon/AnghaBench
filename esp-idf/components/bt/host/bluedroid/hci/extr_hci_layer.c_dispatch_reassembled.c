
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BT_HDR ;


 int OSI_THREAD_MAX_TIMEOUT ;
 int SIG_BTU_HCI_MSG ;
 int btu_task_post (int ,int *,int ) ;
 int osi_free (int *) ;

__attribute__((used)) static void dispatch_reassembled(BT_HDR *packet)
{


    if (btu_task_post(SIG_BTU_HCI_MSG, packet, OSI_THREAD_MAX_TIMEOUT) == 0) {
        osi_free(packet);
    }
}
