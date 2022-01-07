
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int ssize_t ;
struct TYPE_5__ {int sec_inst; TYPE_1__* sec; } ;
struct TYPE_4__ {int (* new_transport_session ) (int ,scalar_t__) ;} ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 scalar_t__ atoi (char*) ;
 int free (int*) ;
 int hex2bin (char*,int*) ;
 scalar_t__ malloc (int ) ;
 TYPE_2__* pc_console ;
 int printf (char*,...) ;
 int protocomm_req_handle (TYPE_2__*,char*,scalar_t__,int*,int,int**,int*) ;
 scalar_t__ session_id ;
 int strlen (char*) ;
 int stub1 (int ,scalar_t__) ;

__attribute__((used)) static int common_cmd_handler(int argc, char** argv)
{
    if (argc < 3) {
        return ESP_ERR_INVALID_ARG;
    }

    int i, ret;

    uint32_t cur_session_id = atoi(argv[1]);

    uint8_t *buf = (uint8_t *) malloc(strlen(argv[2]));
    uint8_t *outbuf;
    ssize_t outlen;
    ssize_t len = hex2bin(argv[2], buf);

    if (cur_session_id != session_id) {
        if (pc_console->sec && pc_console->sec->new_transport_session) {
            ret = pc_console->sec->new_transport_session(pc_console->sec_inst, cur_session_id);
            if (ret == ESP_OK) {
                session_id = cur_session_id;
            }
        }
    }

    ret = protocomm_req_handle(pc_console, argv[0], cur_session_id, buf, len, &outbuf, &outlen);
    free(buf);

    if (ret == ESP_OK) {
        printf("\r\n");
        for (i = 0; i < outlen; i++) {
            printf("%02x", outbuf[i]);
        }
        printf("\r\n");


        free(outbuf);

        return ESP_OK;
    } else {
        return ret;
    }
}
