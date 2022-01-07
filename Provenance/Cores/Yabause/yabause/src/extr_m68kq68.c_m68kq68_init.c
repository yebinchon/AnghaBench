
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dummy_read ;
 int dummy_write ;
 int q68_create () ;
 int q68_set_irq (int ,int ) ;
 int q68_set_readb_func (int ,int ) ;
 int q68_set_readw_func (int ,int ) ;
 int q68_set_writeb_func (int ,int ) ;
 int q68_set_writew_func (int ,int ) ;
 int state ;

__attribute__((used)) static int m68kq68_init(void)
{
    if (!(state = q68_create())) {
        return -1;
    }
    q68_set_irq(state, 0);
    q68_set_readb_func(state, dummy_read);
    q68_set_readw_func(state, dummy_read);
    q68_set_writeb_func(state, dummy_write);
    q68_set_writew_func(state, dummy_write);

    return 0;
}
