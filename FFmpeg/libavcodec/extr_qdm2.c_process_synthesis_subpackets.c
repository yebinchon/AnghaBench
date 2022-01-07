
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QDM2SubPNode ;
typedef int QDM2Context ;


 int process_subpacket_10 (int *,int *) ;
 int process_subpacket_11 (int *,int *) ;
 int process_subpacket_12 (int *,int *) ;
 int process_subpacket_9 (int *,int *) ;
 int * qdm2_search_subpacket_type_in_list (int *,int) ;

__attribute__((used)) static void process_synthesis_subpackets(QDM2Context *q, QDM2SubPNode *list)
{
    QDM2SubPNode *nodes[4];

    nodes[0] = qdm2_search_subpacket_type_in_list(list, 9);
    if (nodes[0])
        process_subpacket_9(q, nodes[0]);

    nodes[1] = qdm2_search_subpacket_type_in_list(list, 10);
    if (nodes[1])
        process_subpacket_10(q, nodes[1]);
    else
        process_subpacket_10(q, ((void*)0));

    nodes[2] = qdm2_search_subpacket_type_in_list(list, 11);
    if (nodes[0] && nodes[1] && nodes[2])
        process_subpacket_11(q, nodes[2]);
    else
        process_subpacket_11(q, ((void*)0));

    nodes[3] = qdm2_search_subpacket_type_in_list(list, 12);
    if (nodes[0] && nodes[1] && nodes[3])
        process_subpacket_12(q, nodes[3]);
    else
        process_subpacket_12(q, ((void*)0));
}
