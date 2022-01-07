
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BT_HDR ;


 int NO_OPCODE_CHECKING ;
 int osi_free (int *) ;
 int read_command_complete_header (int *,int ,int ) ;

__attribute__((used)) static void parse_generic_command_complete(BT_HDR *response)
{
    read_command_complete_header(response, NO_OPCODE_CHECKING, 0 );

    osi_free(response);
}
