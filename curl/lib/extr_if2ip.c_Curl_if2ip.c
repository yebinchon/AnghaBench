
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int if2ip_result_t ;


 int IF2IP_NOT_FOUND ;

if2ip_result_t Curl_if2ip(int af, unsigned int remote_scope,
                          unsigned int local_scope_id, const char *interf,
                          char *buf, int buf_size)
{
    (void) af;
    (void) remote_scope;
    (void) local_scope_id;
    (void) interf;
    (void) buf;
    (void) buf_size;
    return IF2IP_NOT_FOUND;
}
