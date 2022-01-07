
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int protocomm_t ;
typedef int protocomm_req_handler_t ;
typedef int esp_err_t ;


 int REQ_EP ;
 int protocomm_add_endpoint_internal (int *,char const*,int ,void*,int ) ;

esp_err_t protocomm_add_endpoint(protocomm_t *pc, const char *ep_name,
                                 protocomm_req_handler_t h, void *priv_data)
{
    return protocomm_add_endpoint_internal(pc, ep_name, h, priv_data, REQ_EP);
}
