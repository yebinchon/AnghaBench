
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int lmp_subversion; int manufacturer; int lmp_version; int hci_revision; int hci_version; } ;
typedef TYPE_1__ bt_version_t ;
typedef int BT_HDR ;


 int HCI_READ_LOCAL_VERSION_INFO ;
 int STREAM_TO_UINT16 (int ,int *) ;
 int STREAM_TO_UINT8 (int ,int *) ;
 int assert (int ) ;
 int osi_free (int *) ;
 int * read_command_complete_header (int *,int ,int) ;

__attribute__((used)) static void parse_read_local_version_info_response(
    BT_HDR *response,
    bt_version_t *bt_version)
{

    uint8_t *stream = read_command_complete_header(response, HCI_READ_LOCAL_VERSION_INFO, 8 );
    assert(stream != ((void*)0));
    STREAM_TO_UINT8(bt_version->hci_version, stream);
    STREAM_TO_UINT16(bt_version->hci_revision, stream);
    STREAM_TO_UINT8(bt_version->lmp_version, stream);
    STREAM_TO_UINT16(bt_version->manufacturer, stream);
    STREAM_TO_UINT16(bt_version->lmp_subversion, stream);

    osi_free(response);
}
