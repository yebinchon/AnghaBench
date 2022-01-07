
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;
typedef int CLIENT_THREAD_STATE_T ;


 int GLBLENDFUNCSEPARATE_ID ;
 int RPC_CALL4 (int ,int *,int ,int ,int ,int ,int ) ;
 int RPC_ENUM (int ) ;
 int glBlendFuncSeparate_impl ;

__attribute__((used)) static void set_blend_func (CLIENT_THREAD_STATE_T *thread, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha) {
   RPC_CALL4(glBlendFuncSeparate_impl,
             thread,
             GLBLENDFUNCSEPARATE_ID,
             RPC_ENUM(srcRGB),
             RPC_ENUM(dstRGB),
             RPC_ENUM(srcAlpha),
             RPC_ENUM(dstAlpha));
}
