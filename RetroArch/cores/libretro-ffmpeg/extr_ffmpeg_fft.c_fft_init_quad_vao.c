
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int quad_buffer ;
struct TYPE_3__ {int quad; int vao; } ;
typedef TYPE_1__ fft_t ;
typedef int GLvoid ;
typedef int GLbyte ;


 int GL_ARRAY_BUFFER ;
 int GL_BYTE ;
 int GL_FALSE ;
 int GL_STATIC_DRAW ;
 int glBindBuffer (int ,int ) ;
 int glBindVertexArray (int ) ;
 int glBufferData (int ,int,int const*,int ) ;
 int glEnableVertexAttribArray (int) ;
 int glGenBuffers (int,int *) ;
 int glGenVertexArrays (int,int *) ;
 int glVertexAttribPointer (int,int,int ,int ,int ,int const*) ;

__attribute__((used)) static void fft_init_quad_vao(fft_t *fft)
{
   static const GLbyte quad_buffer[] = {
      -1, -1, 1, -1, -1, 1, 1, 1,
       0, 0, 1, 0, 0, 1, 1, 1,
   };
   glGenBuffers(1, &fft->quad);
   glBindBuffer(GL_ARRAY_BUFFER, fft->quad);
   glBufferData(GL_ARRAY_BUFFER,
         sizeof(quad_buffer), quad_buffer, GL_STATIC_DRAW);
   glBindBuffer(GL_ARRAY_BUFFER, 0);

   glGenVertexArrays(1, &fft->vao);
   glBindVertexArray(fft->vao);
   glBindBuffer(GL_ARRAY_BUFFER, fft->quad);
   glEnableVertexAttribArray(0);
   glEnableVertexAttribArray(1);
   glVertexAttribPointer(0, 2, GL_BYTE, GL_FALSE, 0, 0);
   glVertexAttribPointer(1, 2, GL_BYTE, GL_FALSE, 0,
         (const GLvoid*)((uintptr_t)(8)));
   glBindVertexArray(0);
   glBindBuffer(GL_ARRAY_BUFFER, 0);
}
