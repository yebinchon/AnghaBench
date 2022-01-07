
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;
typedef int LIST ;


 int * IkeParsePayloadListEx (void*,int ,int ,int *) ;

LIST *IkeParsePayloadList(void *data, UINT size, UCHAR first_payload)
{
 return IkeParsePayloadListEx(data, size, first_payload, ((void*)0));
}
