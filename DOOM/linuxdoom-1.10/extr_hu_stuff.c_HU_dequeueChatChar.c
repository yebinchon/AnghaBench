
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QUEUESIZE ;
 char* chatchars ;
 size_t head ;
 size_t tail ;

char HU_dequeueChatChar(void)
{
    char c;

    if (head != tail)
    {
 c = chatchars[tail];
 tail = (tail + 1) & (QUEUESIZE-1);
    }
    else
    {
 c = 0;
    }

    return c;
}
