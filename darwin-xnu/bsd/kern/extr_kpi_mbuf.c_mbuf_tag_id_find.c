
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbuf_tag_id_t ;
typedef int errno_t ;


 int NSI_MBUF_TAG ;
 int net_str_id_find_internal (char const*,int *,int ,int) ;

errno_t
mbuf_tag_id_find(
 const char *string,
 mbuf_tag_id_t *out_id)
{
 return (net_str_id_find_internal(string, out_id, NSI_MBUF_TAG, 1));
}
