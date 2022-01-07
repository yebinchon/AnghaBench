
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
typedef scalar_t__ CONNECTION_TYPE ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ CONN_ORIENT_ORIG ;
 scalar_t__ CONN_ORIENT_TERM ;
 scalar_t__ btm_sec_set_security_level (scalar_t__,char const*,int ,int ,int ,int ,int ) ;

BOOLEAN BTM_SetSecurityLevel (BOOLEAN is_originator, const char *p_name, UINT8 service_id,
                              UINT16 sec_level, UINT16 psm, UINT32 mx_proto_id,
                              UINT32 mx_chan_id)
{

    CONNECTION_TYPE conn_type;

    if (is_originator) {
        conn_type = CONN_ORIENT_ORIG;
    } else {
        conn_type = CONN_ORIENT_TERM;
    }

    return (btm_sec_set_security_level (conn_type, p_name, service_id,
                                        sec_level, psm, mx_proto_id, mx_chan_id));




}
