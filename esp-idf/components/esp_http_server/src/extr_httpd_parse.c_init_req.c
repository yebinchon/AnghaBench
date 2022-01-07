
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ignore_sess_ctx_changes; scalar_t__ free_ctx; scalar_t__ sess_ctx; scalar_t__ user_ctx; scalar_t__ aux; scalar_t__ content_len; scalar_t__ uri; scalar_t__ method; scalar_t__ handle; } ;
typedef TYPE_1__ httpd_req_t ;
typedef int httpd_config_t ;


 int memset (char*,int ,int) ;

__attribute__((used)) static void init_req(httpd_req_t *r, httpd_config_t *config)
{
    r->handle = 0;
    r->method = 0;
    memset((char*)r->uri, 0, sizeof(r->uri));
    r->content_len = 0;
    r->aux = 0;
    r->user_ctx = 0;
    r->sess_ctx = 0;
    r->free_ctx = 0;
    r->ignore_sess_ctx_changes = 0;
}
