
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* deallocate ) (unsigned char*) ;scalar_t__ (* allocate ) (size_t) ;scalar_t__ (* reallocate ) (unsigned char*,size_t) ;} ;
struct TYPE_5__ {unsigned char* buffer; size_t length; size_t offset; TYPE_1__ hooks; scalar_t__ noalloc; } ;
typedef TYPE_2__ printbuffer ;


 size_t LLONG_MAX ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 scalar_t__ stub1 (unsigned char*,size_t) ;
 int stub2 (unsigned char*) ;
 scalar_t__ stub3 (size_t) ;
 int stub4 (unsigned char*) ;
 int stub5 (unsigned char*) ;

__attribute__((used)) static unsigned char* ensure(printbuffer * const p, size_t needed)
{
    unsigned char *newbuffer = ((void*)0);
    size_t newsize = 0;

    if ((p == ((void*)0)) || (p->buffer == ((void*)0)))
    {
        return ((void*)0);
    }

    if ((p->length > 0) && (p->offset >= p->length))
    {

        return ((void*)0);
    }

    if (needed > LLONG_MAX)
    {

        return ((void*)0);
    }

    needed += p->offset + 1;
    if (needed <= p->length)
    {
        return p->buffer + p->offset;
    }

    if (p->noalloc) {
        return ((void*)0);
    }


    if (needed > (LLONG_MAX / 2))
    {

        if (needed <= LLONG_MAX)
        {
            newsize = LLONG_MAX;
        }
        else
        {
            return ((void*)0);
        }
    }
    else
    {
        newsize = needed * 2;
    }

    if (p->hooks.reallocate != ((void*)0))
    {

        newbuffer = (unsigned char*)p->hooks.reallocate(p->buffer, newsize);
        if (newbuffer == ((void*)0))
        {
            p->hooks.deallocate(p->buffer);
            p->length = 0;
            p->buffer = ((void*)0);

            return ((void*)0);
        }
    }
    else
    {

        newbuffer = (unsigned char*)p->hooks.allocate(newsize);
        if (!newbuffer)
        {
            p->hooks.deallocate(p->buffer);
            p->length = 0;
            p->buffer = ((void*)0);

            return ((void*)0);
        }
        if (newbuffer)
        {
            memcpy(newbuffer, p->buffer, p->offset + 1);
        }
        p->hooks.deallocate(p->buffer);
    }
    p->length = newsize;
    p->buffer = newbuffer;

    return newbuffer + p->offset;
}
