
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTM_VSC_CMPL_CB ;
typedef int tBTM_STATUS ;
typedef int tBTM_CMPL_CB ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int BT_HDR ;


 int BTM_CMD_STARTED ;
 int BTM_NO_RESOURCES ;
 int BTM_SUCCESS ;
 int BTM_TRACE_EVENT (char*,int ,int ) ;
 int HCIC_PREAMBLE_SIZE ;
 int btsnd_hcic_vendor_spec_cmd (void*,int ,int ,int *,void*) ;
 void* osi_malloc (int ) ;

tBTM_STATUS BTM_VendorSpecificCommand(UINT16 opcode, UINT8 param_len,
                                      UINT8 *p_param_buf, tBTM_VSC_CMPL_CB *p_cb)
{
    void *p_buf;

    BTM_TRACE_EVENT ("BTM: BTM_VendorSpecificCommand: Opcode: 0x%04X, ParamLen: %i.",
                     opcode, param_len);


    if ((p_buf = osi_malloc((UINT16)(sizeof(BT_HDR) + sizeof (tBTM_CMPL_CB *) +
                                     param_len + HCIC_PREAMBLE_SIZE))) != ((void*)0)) {

        btsnd_hcic_vendor_spec_cmd (p_buf, opcode, param_len, p_param_buf, (void *)p_cb);


        if (p_cb != ((void*)0)) {
            return (BTM_CMD_STARTED);
        } else {
            return (BTM_SUCCESS);
        }
    } else {
        return (BTM_NO_RESOURCES);
    }

}
