
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;
typedef scalar_t__ UINT4 ;
typedef int POINTER ;


 int Decode (scalar_t__*,unsigned char*,int) ;
 int FF (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int GG (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int HH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int S11 ;
 int S12 ;
 int S13 ;
 int S14 ;
 int S21 ;
 int S22 ;
 int S23 ;
 int S24 ;
 int S31 ;
 int S32 ;
 int S33 ;
 int S34 ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void MD4Transform (UINT4 state[4], unsigned char block[64])
{
 UINT4 a = state[0], b = state[1], c = state[2], d = state[3], x[16];

 Decode (x, block, 64);


FF (a, b, c, d, x[ 0], S11);
FF (d, a, b, c, x[ 1], S12);
FF (c, d, a, b, x[ 2], S13);
FF (b, c, d, a, x[ 3], S14);
FF (a, b, c, d, x[ 4], S11);
FF (d, a, b, c, x[ 5], S12);
FF (c, d, a, b, x[ 6], S13);
FF (b, c, d, a, x[ 7], S14);
FF (a, b, c, d, x[ 8], S11);
FF (d, a, b, c, x[ 9], S12);
FF (c, d, a, b, x[10], S13);
FF (b, c, d, a, x[11], S14);
FF (a, b, c, d, x[12], S11);
FF (d, a, b, c, x[13], S12);
FF (c, d, a, b, x[14], S13);
FF (b, c, d, a, x[15], S14);


GG (a, b, c, d, x[ 0], S21);
GG (d, a, b, c, x[ 4], S22);
GG (c, d, a, b, x[ 8], S23);
GG (b, c, d, a, x[12], S24);
GG (a, b, c, d, x[ 1], S21);
GG (d, a, b, c, x[ 5], S22);
GG (c, d, a, b, x[ 9], S23);
GG (b, c, d, a, x[13], S24);
GG (a, b, c, d, x[ 2], S21);
GG (d, a, b, c, x[ 6], S22);
GG (c, d, a, b, x[10], S23);
GG (b, c, d, a, x[14], S24);
GG (a, b, c, d, x[ 3], S21);
GG (d, a, b, c, x[ 7], S22);
GG (c, d, a, b, x[11], S23);
GG (b, c, d, a, x[15], S24);


HH (a, b, c, d, x[ 0], S31);
HH (d, a, b, c, x[ 8], S32);
HH (c, d, a, b, x[ 4], S33);
HH (b, c, d, a, x[12], S34);
HH (a, b, c, d, x[ 2], S31);
HH (d, a, b, c, x[10], S32);
HH (c, d, a, b, x[ 6], S33);
HH (b, c, d, a, x[14], S34);
HH (a, b, c, d, x[ 1], S31);
HH (d, a, b, c, x[ 9], S32);
HH (c, d, a, b, x[ 5], S33);
HH (b, c, d, a, x[13], S34);
HH (a, b, c, d, x[ 3], S31);
HH (d, a, b, c, x[11], S32);
HH (c, d, a, b, x[ 7], S33);
HH (b, c, d, a, x[15], S34);

state[0] += a;
state[1] += b;
state[2] += c;
state[3] += d;


 memset ((POINTER)x, 0, sizeof (x));
}
