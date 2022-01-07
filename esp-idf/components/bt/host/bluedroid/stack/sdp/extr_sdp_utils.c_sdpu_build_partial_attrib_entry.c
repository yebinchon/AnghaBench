
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tSDP_ATTRIBUTE ;
typedef int UINT8 ;
typedef size_t UINT16 ;


 int SDP_MAX_ATTR_LEN ;
 int SDP_TRACE_ERROR (char*) ;
 int memcpy (int *,int *,size_t) ;
 int osi_free (int *) ;
 scalar_t__ osi_malloc (int) ;
 int sdpu_build_attrib_entry (int *,int *) ;
 size_t sdpu_get_attrib_entry_len (int *) ;

UINT8 *sdpu_build_partial_attrib_entry (UINT8 *p_out, tSDP_ATTRIBUTE *p_attr, UINT16 len, UINT16 *offset)
{
    UINT8 *p_attr_buff;
    UINT8 *p_tmp_attr;
    size_t len_to_copy;
    UINT16 attr_len;

    if ((p_attr_buff = (UINT8 *) osi_malloc(sizeof(UINT8) * SDP_MAX_ATTR_LEN )) == ((void*)0)) {
        SDP_TRACE_ERROR("sdpu_build_partial_attrib_entry cannot get a buffer!\n");
        return ((void*)0);
    }
    p_tmp_attr = p_attr_buff;

    sdpu_build_attrib_entry(p_tmp_attr, p_attr);
    attr_len = sdpu_get_attrib_entry_len(p_attr);

    len_to_copy = ((attr_len - *offset) < len) ? (attr_len - *offset) : len;

    memcpy(p_out, &p_attr_buff[*offset], len_to_copy);

    p_out = &p_out[len_to_copy];
    *offset += len_to_copy;

    osi_free(p_attr_buff);
    return p_out;
}
