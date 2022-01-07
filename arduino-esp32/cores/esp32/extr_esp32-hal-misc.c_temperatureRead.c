
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int temprature_sens_read () ;

float temperatureRead()
{
    return (temprature_sens_read() - 32) / 1.8;
}
