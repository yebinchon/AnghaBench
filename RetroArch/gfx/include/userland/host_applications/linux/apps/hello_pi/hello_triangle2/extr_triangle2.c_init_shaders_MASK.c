#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vertex_data ;
struct TYPE_3__ {void* attr_vertex2; void* attr_vertex; int /*<<< orphan*/  buf; int /*<<< orphan*/  screen_height; int /*<<< orphan*/  screen_width; int /*<<< orphan*/  tex; int /*<<< orphan*/  tex_fb; void* program2; void* unif_centre2; void* unif_offset2; void* unif_scale2; scalar_t__ verbose; void* mshader; void* vshader; void* program; void* unif_centre; void* unif_tex; void* unif_offset; void* unif_scale; void* unif_color; void* fshader; } ;
typedef  double GLfloat ;
typedef  char GLchar ;
typedef  TYPE_1__ CUBE_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  GL_ARRAY_BUFFER ; 
 int /*<<< orphan*/  GL_COLOR_ATTACHMENT0 ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_FRAGMENT_SHADER ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_NEAREST ; 
 int /*<<< orphan*/  GL_RGB ; 
 int /*<<< orphan*/  GL_STATIC_DRAW ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_MAG_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_MIN_FILTER ; 
 int /*<<< orphan*/  GL_UNSIGNED_SHORT_5_6_5 ; 
 int /*<<< orphan*/  GL_VERTEX_SHADER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,double const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (double,double,double,double) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 void* FUNC8 () ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ *) ; 
 void* FUNC15 (void*,char*) ; 
 void* FUNC16 (void*,char*) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 int /*<<< orphan*/  FUNC18 (void*,int,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (void*) ; 
 int /*<<< orphan*/  FUNC24 (void*) ; 

__attribute__((used)) static void FUNC25(CUBE_STATE_T *state)
{
   static const GLfloat vertex_data[] = {
        -1.0,-1.0,1.0,1.0,
        1.0,-1.0,1.0,1.0,
        1.0,1.0,1.0,1.0,
        -1.0,1.0,1.0,1.0
   };
   const GLchar *vshader_source =
              "attribute vec4 vertex;"
              "varying vec2 tcoord;"
              "void main(void) {"
              " vec4 pos = vertex;"
              " gl_Position = pos;"
              " tcoord = vertex.xy*0.5+0.5;"
              "}";

   //Mandelbrot
   const GLchar *mandelbrot_fshader_source =
"uniform vec4 color;"
"uniform vec2 scale;"
"uniform vec2 centre;"
"varying vec2 tcoord;"
"void main(void) {"
"  float intensity;"
"  vec4 color2;"
"  float cr=(gl_FragCoord.x-centre.x)*scale.x;"
"  float ci=(gl_FragCoord.y-centre.y)*scale.y;"
"  float ar=cr;"
"  float ai=ci;"
"  float tr,ti;"
"  float col=0.0;"
"  float p=0.0;"
"  int i=0;"
"  for(int i2=1;i2<16;i2++)"
"  {"
"    tr=ar*ar-ai*ai+cr;"
"    ti=2.0*ar*ai+ci;"
"    p=tr*tr+ti*ti;"
"    ar=tr;"
"    ai=ti;"
"    if (p>16.0)"
"    {"
"      i=i2;"
"      break;"
"    }"
"  }"
"  color2 = vec4(float(i)*0.0625,0,0,1);"
"  gl_FragColor = color2;"
"}";

   // Julia
   const GLchar *julia_fshader_source =
"uniform vec4 color;"
"uniform vec2 scale;"
"uniform vec2 centre;"
"uniform vec2 offset;"
"varying vec2 tcoord;"
"uniform sampler2D tex;"
"void main(void) {"
"  float intensity;"
"  vec4 color2;"
"  float ar=(gl_FragCoord.x-centre.x)*scale.x;"
"  float ai=(gl_FragCoord.y-centre.y)*scale.y;"
"  float cr=(offset.x-centre.x)*scale.x;"
"  float ci=(offset.y-centre.y)*scale.y;"
"  float tr,ti;"
"  float col=0.0;"
"  float p=0.0;"
"  int i=0;"
"  vec2 t2;"
"  t2.x=tcoord.x+(offset.x-centre.x)*(0.5/centre.y);"
"  t2.y=tcoord.y+(offset.y-centre.y)*(0.5/centre.x);"
"  for(int i2=1;i2<16;i2++)"
"  {"
"    tr=ar*ar-ai*ai+cr;"
"    ti=2.0*ar*ai+ci;"
"    p=tr*tr+ti*ti;"
"    ar=tr;"
"    ai=ti;"
"    if (p>16.0)"
"    {"
"      i=i2;"
"      break;"
"    }"
"  }"
"  color2 = vec4(0,float(i)*0.0625,0,1);"
"  color2 = color2+texture2D(tex,t2);"
"  gl_FragColor = color2;"
"}";

        state->vshader = FUNC9(GL_VERTEX_SHADER);
        FUNC18(state->vshader, 1, &vshader_source, 0);
        FUNC7(state->vshader);
        FUNC0();

        if (state->verbose)
            FUNC23(state->vshader);

        state->fshader = FUNC9(GL_FRAGMENT_SHADER);
        FUNC18(state->fshader, 1, &julia_fshader_source, 0);
        FUNC7(state->fshader);
        FUNC0();

        if (state->verbose)
            FUNC23(state->fshader);

        state->mshader = FUNC9(GL_FRAGMENT_SHADER);
        FUNC18(state->mshader, 1, &mandelbrot_fshader_source, 0);
        FUNC7(state->mshader);
        FUNC0();

        if (state->verbose)
            FUNC23(state->mshader);

        // julia
        state->program = FUNC8();
        FUNC1(state->program, state->vshader);
        FUNC1(state->program, state->fshader);
        FUNC17(state->program);
        FUNC0();

        if (state->verbose)
            FUNC24(state->program);

        state->attr_vertex = FUNC15(state->program, "vertex");
        state->unif_color  = FUNC16(state->program, "color");
        state->unif_scale  = FUNC16(state->program, "scale");
        state->unif_offset = FUNC16(state->program, "offset");
        state->unif_tex    = FUNC16(state->program, "tex");
        state->unif_centre = FUNC16(state->program, "centre");

        // mandelbrot
        state->program2 = FUNC8();
        FUNC1(state->program2, state->vshader);
        FUNC1(state->program2, state->mshader);
        FUNC17(state->program2);
        FUNC0();

        if (state->verbose)
            FUNC24(state->program2);

        state->attr_vertex2 = FUNC15(state->program2, "vertex");
        state->unif_scale2  = FUNC16(state->program2, "scale");
        state->unif_offset2 = FUNC16(state->program2, "offset");
        state->unif_centre2 = FUNC16(state->program2, "centre");
        FUNC0();

        FUNC6 ( 0.0, 1.0, 1.0, 1.0 );

        FUNC12(1, &state->buf);

        FUNC0();

        // Prepare a texture image
        FUNC14(1, &state->tex);
        FUNC0();
        FUNC4(GL_TEXTURE_2D,state->tex);
        FUNC0();
        // glActiveTexture(0)
        FUNC19(GL_TEXTURE_2D,0,GL_RGB,state->screen_width,state->screen_height,0,GL_RGB,GL_UNSIGNED_SHORT_5_6_5,0);
        FUNC0();
        FUNC20(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        FUNC20(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        FUNC0();
        // Prepare a framebuffer for rendering
        FUNC13(1,&state->tex_fb);
        FUNC0();
        FUNC3(GL_FRAMEBUFFER,state->tex_fb);
        FUNC0();
        FUNC11(GL_FRAMEBUFFER,GL_COLOR_ATTACHMENT0,GL_TEXTURE_2D,state->tex,0);
        FUNC0();
        FUNC3(GL_FRAMEBUFFER,0);
        FUNC0();
        // Prepare viewport
        FUNC22 ( 0, 0, state->screen_width, state->screen_height );
        FUNC0();

        // Upload vertex data to a buffer
        FUNC2(GL_ARRAY_BUFFER, state->buf);
        FUNC5(GL_ARRAY_BUFFER, sizeof(vertex_data),
                             vertex_data, GL_STATIC_DRAW);
        FUNC21(state->attr_vertex, 4, GL_FLOAT, 0, 16, 0);
        FUNC10(state->attr_vertex);
        FUNC21(state->attr_vertex2, 4, GL_FLOAT, 0, 16, 0);
        FUNC10(state->attr_vertex2);

        FUNC0();
}