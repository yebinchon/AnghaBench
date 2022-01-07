
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVBufferRef ;


 int * av_buffer_create (int *,int ,int *,int *,int ) ;

__attribute__((used)) static AVBufferRef *nvdec_alloc_dummy(int size)
{
    return av_buffer_create(((void*)0), 0, ((void*)0), ((void*)0), 0);
}
