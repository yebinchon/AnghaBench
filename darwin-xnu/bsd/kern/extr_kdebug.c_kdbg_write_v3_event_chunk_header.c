
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vnode_t ;
typedef int * vfs_context_t ;
typedef int user_addr_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int kd_chunk_header_v3 ;
typedef int caddr_t ;


 int RAW_file_offset ;
 int V3_EVENT_DATA_VERSION ;
 int assert (int) ;
 scalar_t__ copyout (int*,int,int) ;
 int kdbg_write_to_vnode (int ,int,int *,int *,int) ;
 scalar_t__ kdbg_write_v3_chunk_header (int,int ,int ,int,int *,int *) ;

user_addr_t
kdbg_write_v3_event_chunk_header(user_addr_t buffer, uint32_t tag, uint64_t length, vnode_t vp, vfs_context_t ctx)
{
        uint64_t future_chunk_timestamp = 0;
        length += sizeof(uint64_t);

        if (kdbg_write_v3_chunk_header(buffer, tag, V3_EVENT_DATA_VERSION, length, vp, ctx)) {
                return 0;
        }
        if (buffer) {
                buffer += sizeof(kd_chunk_header_v3);
        }


        assert(!buffer ^ !vp);
        assert((vp == ((void*)0)) || (ctx != ((void*)0)));


        if (buffer || vp) {
                if (vp) {
                        int ret = kdbg_write_to_vnode((caddr_t)&future_chunk_timestamp, sizeof(uint64_t), vp, ctx, RAW_file_offset);
                        if (!ret) {
                                RAW_file_offset += (sizeof(uint64_t));
                        }
                }
                else {
                        if (copyout(&future_chunk_timestamp, buffer, sizeof(uint64_t))) {
                                return 0;
                        }
                }
        }

        return (buffer + sizeof(uint64_t));
}
