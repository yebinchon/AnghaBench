
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_con_state_t ;
const char *network_mysqld_con_state_get_name(network_mysqld_con_state_t state) {
 switch (state) {
 case 145: return "CON_STATE_INIT";
 case 147: return "CON_STATE_CONNECT_SERVER";
 case 141: return "CON_STATE_READ_HANDSHAKE";
 case 132: return "CON_STATE_SEND_HANDSHAKE";
 case 144: return "CON_STATE_READ_AUTH";
 case 136: return "CON_STATE_SEND_AUTH";
 case 143: return "CON_STATE_READ_AUTH_OLD_PASSWORD";
 case 135: return "CON_STATE_SEND_AUTH_OLD_PASSWORD";
 case 142: return "CON_STATE_READ_AUTH_RESULT";
 case 134: return "CON_STATE_SEND_AUTH_RESULT";
 case 138: return "CON_STATE_READ_QUERY";
 case 129: return "CON_STATE_SEND_QUERY";
 case 137: return "CON_STATE_READ_QUERY_RESULT";
 case 128: return "CON_STATE_SEND_QUERY_RESULT";
 case 140: return "CON_STATE_READ_LOCAL_INFILE_DATA";
 case 131: return "CON_STATE_SEND_LOCAL_INFILE_DATA";
 case 139: return "CON_STATE_READ_LOCAL_INFILE_RESULT";
 case 130: return "CON_STATE_SEND_LOCAL_INFILE_RESULT";
 case 149: return "CON_STATE_CLOSE_CLIENT";
 case 148: return "CON_STATE_CLOSE_SERVER";
 case 146: return "CON_STATE_ERROR";
 case 133: return "CON_STATE_SEND_ERROR";
 }

 return "unknown";
}
