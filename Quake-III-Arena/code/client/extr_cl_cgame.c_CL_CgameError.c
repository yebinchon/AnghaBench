
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Error (int ,char*,char const*) ;
 int ERR_DROP ;

void CL_CgameError( const char *string ) {
 Com_Error( ERR_DROP, "%s", string );
}
