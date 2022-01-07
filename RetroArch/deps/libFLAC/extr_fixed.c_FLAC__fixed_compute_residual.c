
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int residual ;
typedef int data ;
typedef int FLAC__int32 ;


 int FLAC__ASSERT (int) ;
 int memcpy (int*,int const*,int) ;

void FLAC__fixed_compute_residual(const FLAC__int32 data[], unsigned data_len, unsigned order, FLAC__int32 residual[])
{
 const int idata_len = (int)data_len;
 int i;

 switch(order) {
  case 0:
   FLAC__ASSERT(sizeof(residual[0]) == sizeof(data[0]));
   memcpy(residual, data, sizeof(residual[0])*data_len);
   break;
  case 1:
   for(i = 0; i < idata_len; i++)
    residual[i] = data[i] - data[i-1];
   break;
  case 2:
   for(i = 0; i < idata_len; i++)
    residual[i] = data[i] - 2*data[i-1] + data[i-2];
   break;
  case 3:
   for(i = 0; i < idata_len; i++)
    residual[i] = data[i] - 3*data[i-1] + 3*data[i-2] - data[i-3];
   break;
  case 4:
   for(i = 0; i < idata_len; i++)
    residual[i] = data[i] - 4*data[i-1] + 6*data[i-2] - 4*data[i-3] + data[i-4];
   break;
  default:
   FLAC__ASSERT(0);
 }
}
