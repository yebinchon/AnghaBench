
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_char_in_utf8(unsigned char *buffer, unsigned char c)
{
    if (c == 0x00)
        return 0;


    if (c < 0x80)
    {
        switch (c)
        {
        case 0x2a:
            *buffer = 0xc3;
            *(buffer+1) = 0xa1;
            return 2;
        case 0x5c:
            *buffer = 0xc3;
            *(buffer+1) = 0xa9;
            return 2;
        case 0x5e:
            *buffer = 0xc3;
            *(buffer+1) = 0xad;
            return 2;
        case 0x5f:
            *buffer = 0xc3;
            *(buffer+1) = 0xb3;
            return 2;
        case 0x60:
            *buffer = 0xc3;
            *(buffer+1) = 0xba;
            return 2;
        case 0x7b:
            *buffer = 0xc3;
            *(buffer+1) = 0xa7;
            return 2;
        case 0x7c:
            *buffer = 0xc3;
            *(buffer+1) = 0xb7;
            return 2;
        case 0x7d:
            *buffer = 0xc3;
            *(buffer+1) = 0x91;
            return 2;
        case 0x7e:
            *buffer = 0xc3;
            *(buffer+1) = 0xb1;
            return 2;
        default:
            *buffer = c;
            return 1;
        }
    }
    switch (c)
    {


        case 0x80:
            *buffer = 0xc2;
            *(buffer+1) = 0xae;
            return 2;
        case 0x81:
            *buffer = 0xc2;
            *(buffer+1) = 0xb0;
            return 2;
        case 0x82:
            *buffer = 0xc2;
            *(buffer+1) = 0xbd;
            return 2;
        case 0x83:
            *buffer = 0xc2;
            *(buffer+1) = 0xbf;
            return 2;
        case 0x84:
            *buffer = 0xe2;
            *(buffer+1) = 0x84;
            *(buffer+2) = 0xa2;
            return 3;
        case 0x85:
            *buffer = 0xc2;
            *(buffer+1) = 0xa2;
            return 2;
        case 0x86:
            *buffer = 0xc2;
            *(buffer+1) = 0xa3;
            return 2;
        case 0x87:
            *buffer = 0xe2;
            *(buffer+1) = 0x99;
            *(buffer+2) = 0xaa;
            return 3;
        case 0x88:
            *buffer = 0xc3;
            *(buffer+1) = 0xa0;
            return 2;
        case 0x89:
            *buffer = 0x20;
            return 1;
        case 0x8a:
            *buffer = 0xc3;
            *(buffer+1) = 0xa8;
            return 2;
        case 0x8b:
            *buffer = 0xc3;
            *(buffer+1) = 0xa2;
            return 2;
        case 0x8c:
            *buffer = 0xc3;
            *(buffer+1) = 0xaa;
            return 2;
        case 0x8d:
            *buffer = 0xc3;
            *(buffer+1) = 0xae;
            return 2;
        case 0x8e:
            *buffer = 0xc3;
            *(buffer+1) = 0xb4;
            return 2;
        case 0x8f:
            *buffer = 0xc3;
            *(buffer+1) = 0xbb;
            return 2;


        case 0x90:
            *buffer = 0xc3;
            *(buffer+1) = 0x81;
            return 2;
        case 0x91:
            *buffer = 0xc3;
            *(buffer+1) = 0x89;
            return 2;
        case 0x92:
            *buffer = 0xc3;
            *(buffer+1) = 0x93;
            return 2;
        case 0x93:
            *buffer = 0xc3;
            *(buffer+1) = 0x9a;
            return 2;
        case 0x94:
            *buffer = 0xc3;
            *(buffer+1) = 0x9c;
            return 2;
        case 0x95:
            *buffer = 0xc3;
            *(buffer+1) = 0xbc;
            return 2;
        case 0x96:
            *buffer = 0x27;
            return 1;
        case 0x97:
            *buffer = 0xc2;
            *(buffer+1) = 0xa1;
            return 2;
        case 0x98:
            *buffer = 0x2a;
            return 1;
        case 0x99:
            *buffer = 0x27;
            return 1;
        case 0x9a:
            *buffer = 0x2d;
            return 1;
        case 0x9b:
            *buffer = 0xc2;
            *(buffer+1) = 0xa9;
            return 2;
        case 0x9c:
            *buffer = 0xe2;
            *(buffer+1) = 0x84;
            *(buffer+2) = 0xa0;
            return 3;
        case 0x9d:
            *buffer = 0x2e;
            return 1;
        case 0x9e:
            *buffer = 0x22;
            return 1;
        case 0x9f:
            *buffer = 0x22;
            return 1;
        case 0xa0:
            *buffer = 0xc3;
            *(buffer+1) = 0x80;
            return 2;
        case 0xa1:
            *buffer = 0xc3;
            *(buffer+1) = 0x82;
            return 2;
        case 0xa2:
            *buffer = 0xc3;
            *(buffer+1) = 0x87;
            return 2;
        case 0xa3:
            *buffer = 0xc3;
            *(buffer+1) = 0x88;
            return 2;
        case 0xa4:
            *buffer = 0xc3;
            *(buffer+1) = 0x8a;
            return 2;
        case 0xa5:
            *buffer = 0xc3;
            *(buffer+1) = 0x8b;
            return 2;
        case 0xa6:
            *buffer = 0xc3;
            *(buffer+1) = 0xab;
            return 2;
        case 0xa7:
            *buffer = 0xc3;
            *(buffer+1) = 0x8e;
            return 2;
        case 0xa8:
            *buffer = 0xc3;
            *(buffer+1) = 0x8f;
            return 2;
        case 0xa9:
            *buffer = 0xc3;
            *(buffer+1) = 0xaf;
            return 2;
        case 0xaa:
            *buffer = 0xc3;
            *(buffer+1) = 0x94;
            return 2;
        case 0xab:
            *buffer = 0xc3;
            *(buffer+1) = 0x99;
            return 2;
        case 0xac:
            *buffer = 0xc3;
            *(buffer+1) = 0xb9;
            return 2;
        case 0xad:
            *buffer = 0xc3;
            *(buffer+1) = 0x9b;
            return 2;
        case 0xae:
            *buffer = 0xc2;
            *(buffer+1) = 0xab;
            return 2;
        case 0xaf:
            *buffer = 0xc2;
            *(buffer+1) = 0xbb;
            return 2;


        case 0xb0:
            *buffer = 0xc3;
            *(buffer+1) = 0x83;
            return 2;
        case 0xb1:
            *buffer = 0xc3;
            *(buffer+1) = 0xa3;
            return 2;
        case 0xb2:
            *buffer = 0xc3;
            *(buffer+1) = 0x8d;
            return 2;
        case 0xb3:
            *buffer = 0xc3;
            *(buffer+1) = 0x8c;
            return 2;
        case 0xb4:
            *buffer = 0xc3;
            *(buffer+1) = 0xac;
            return 2;
        case 0xb5:
            *buffer = 0xc3;
            *(buffer+1) = 0x92;
            return 2;
        case 0xb6:
            *buffer = 0xc3;
            *(buffer+1) = 0xb2;
            return 2;
        case 0xb7:
            *buffer = 0xc3;
            *(buffer+1) = 0x95;
            return 2;
        case 0xb8:
            *buffer = 0xc3;
            *(buffer+1) = 0xb5;
            return 2;
        case 0xb9:
            *buffer = 0x7b;
            return 1;
        case 0xba:
            *buffer = 0x7d;
            return 1;
        case 0xbb:
            *buffer = 0x5c;
            return 1;
        case 0xbc:
            *buffer = 0x5e;
            return 1;
        case 0xbd:
            *buffer = 0x5f;
            return 1;
        case 0xbe:
            *buffer = 0xc2;
            *(buffer+1) = 0xa6;
            return 1;
        case 0xbf:
            *buffer = 0x7e;
            return 1;
        case 0xc0:
            *buffer = 0xc3;
            *(buffer+1) = 0x84;
            return 2;
        case 0xc1:
            *buffer = 0xc3;
            *(buffer+1) = 0xa4;
            return 2;
        case 0xc2:
            *buffer = 0xc3;
            *(buffer+1) = 0x96;
            return 2;
        case 0xc3:
            *buffer = 0xc3;
            *(buffer+1) = 0xb6;
            return 2;
        case 0xc4:
            *buffer = 0xc3;
            *(buffer+1) = 0x9f;
            return 2;
        case 0xc5:
            *buffer = 0xc2;
            *(buffer+1) = 0xa5;
            return 2;
        case 0xc6:
            *buffer = 0xc2;
            *(buffer+1) = 0xa4;
            return 2;
        case 0xc7:
            *buffer = 0x7c;
            return 1;
        case 0xc8:
            *buffer = 0xc3;
            *(buffer+1) = 0x85;
            return 2;
        case 0xc9:
            *buffer = 0xc3;
            *(buffer+1) = 0xa5;
            return 2;
        case 0xca:
            *buffer = 0xc3;
            *(buffer+1) = 0x98;
            return 2;
        case 0xcb:
            *buffer = 0xc3;
            *(buffer+1) = 0xb8;
            return 2;
        case 0xcc:
            *buffer = 0xe2;
            *(buffer+1) = 0x8c;
            *(buffer+2) = 0x9c;
            return 3;
        case 0xcd:
            *buffer = 0xe2;
            *(buffer+1) = 0x8c;
            *(buffer+2) = 0x9d;
            return 3;
        case 0xce:
            *buffer = 0xe2;
            *(buffer+1) = 0x8c;
            *(buffer+2) = 0x9e;
            return 3;
        case 0xcf:
            *buffer = 0xe2;
            *(buffer+1) = 0x8c;
            *(buffer+2) = 0x9f;
            return 3;
        default:
            *buffer = '?';
            return 1;
    }
}
