
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tSDP_DISC_REC ;
typedef int tSDP_DISCOVERY_DB ;
typedef scalar_t__ UINT8 ;


 int * SDP_FindServiceInDb (int *,int ,int *) ;
 int UUID_SERVCLASS_PNP_INFORMATION ;

UINT8 SDP_GetNumDiRecords( tSDP_DISCOVERY_DB *p_db )
{

    UINT8 num_records = 0;
    tSDP_DISC_REC *p_curr_record = ((void*)0);

    do {
        p_curr_record = SDP_FindServiceInDb( p_db, UUID_SERVCLASS_PNP_INFORMATION,
                                             p_curr_record );
        if ( p_curr_record ) {
            num_records++;
        }
    } while ( p_curr_record );

    return num_records;



}
