
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int headbit; int headend; unsigned char* headptr; int * head; } ;
typedef TYPE_1__ oggpack_buffer ;
typedef int ogg_reference ;


 int _lookspan () ;
 unsigned long* mask ;

long oggpack_look(oggpack_buffer *b,int bits){
  unsigned long m=mask[bits];
  unsigned long ret=-1;

  bits+=b->headbit;

  if(bits >= b->headend<<3){
    int end=b->headend;
    unsigned char *ptr=b->headptr;
    ogg_reference *head=b->head;

    if(end<0)return -1;

    if(bits){
      _lookspan();
      ret=*ptr++>>b->headbit;
      if(bits>8){
        --end;
        _lookspan();
        ret|=*ptr++<<(8-b->headbit);
        if(bits>16){
          --end;
          _lookspan();
          ret|=*ptr++<<(16-b->headbit);
          if(bits>24){
            --end;
            _lookspan();
            ret|=*ptr++<<(24-b->headbit);
            if(bits>32 && b->headbit){
              --end;
              _lookspan();
              ret|=*ptr<<(32-b->headbit);
            }
          }
        }
      }
    }

  }else{


    ret=b->headptr[0]>>b->headbit;
    if(bits>8){
      ret|=b->headptr[1]<<(8-b->headbit);
      if(bits>16){
        ret|=b->headptr[2]<<(16-b->headbit);
        if(bits>24){
          ret|=b->headptr[3]<<(24-b->headbit);
          if(bits>32 && b->headbit)
            ret|=b->headptr[4]<<(32-b->headbit);
        }
      }
    }
  }

  ret&=m;
  return ret;
}
