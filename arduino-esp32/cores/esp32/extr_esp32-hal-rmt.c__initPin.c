
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INPUT ;
 int OUTPUT ;
 int PERIPH_RMT_MODULE ;
 scalar_t__ RMT_SIG_IN0_IDX ;
 scalar_t__ RMT_SIG_OUT0_IDX ;
 int periph_enabled ;
 int periph_module_enable (int ) ;
 int pinMatrixInAttach (int,scalar_t__,int ) ;
 int pinMatrixOutAttach (int,scalar_t__,int ,int ) ;
 int pinMode (int,int ) ;

__attribute__((used)) static void _initPin(int pin, int channel, bool tx_not_rx)
{
    if (!periph_enabled) {
        periph_enabled = 1;
        periph_module_enable( PERIPH_RMT_MODULE );
    }
    if (tx_not_rx) {
        pinMode(pin, OUTPUT);
        pinMatrixOutAttach(pin, RMT_SIG_OUT0_IDX + channel, 0, 0);
    } else {
        pinMode(pin, INPUT);
        pinMatrixInAttach(pin, RMT_SIG_IN0_IDX + channel, 0);

    }
}
