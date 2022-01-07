
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vertex_data ;
struct TYPE_3__ {void* attr_vertex2; void* attr_vertex; int buf; int screen_height; int screen_width; int tex; int tex_fb; void* program2; void* unif_centre2; void* unif_offset2; void* unif_scale2; scalar_t__ verbose; void* mshader; void* vshader; void* program; void* unif_centre; void* unif_tex; void* unif_offset; void* unif_scale; void* unif_color; void* fshader; } ;
typedef double GLfloat ;
typedef char GLchar ;
typedef TYPE_1__ CUBE_STATE_T ;


 int GL_ARRAY_BUFFER ;
 int GL_COLOR_ATTACHMENT0 ;
 int GL_FLOAT ;
 int GL_FRAGMENT_SHADER ;
 int GL_FRAMEBUFFER ;
 int GL_NEAREST ;
 int GL_RGB ;
 int GL_STATIC_DRAW ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_UNSIGNED_SHORT_5_6_5 ;
 int GL_VERTEX_SHADER ;
 int check () ;
 int glAttachShader (void*,void*) ;
 int glBindBuffer (int ,int ) ;
 int glBindFramebuffer (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glBufferData (int ,int,double const*,int ) ;
 int glClearColor (double,double,double,double) ;
 int glCompileShader (void*) ;
 void* glCreateProgram () ;
 void* glCreateShader (int ) ;
 int glEnableVertexAttribArray (void*) ;
 int glFramebufferTexture2D (int ,int ,int ,int ,int ) ;
 int glGenBuffers (int,int *) ;
 int glGenFramebuffers (int,int *) ;
 int glGenTextures (int,int *) ;
 void* glGetAttribLocation (void*,char*) ;
 void* glGetUniformLocation (void*,char*) ;
 int glLinkProgram (void*) ;
 int glShaderSource (void*,int,char const**,int ) ;
 int glTexImage2D (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int glTexParameterf (int ,int ,int ) ;
 int glVertexAttribPointer (void*,int,int ,int ,int,int ) ;
 int glViewport (int ,int ,int ,int ) ;
 int showlog (void*) ;
 int showprogramlog (void*) ;

__attribute__((used)) static void init_shaders(CUBE_STATE_T *state)
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

        state->vshader = glCreateShader(GL_VERTEX_SHADER);
        glShaderSource(state->vshader, 1, &vshader_source, 0);
        glCompileShader(state->vshader);
        check();

        if (state->verbose)
            showlog(state->vshader);

        state->fshader = glCreateShader(GL_FRAGMENT_SHADER);
        glShaderSource(state->fshader, 1, &julia_fshader_source, 0);
        glCompileShader(state->fshader);
        check();

        if (state->verbose)
            showlog(state->fshader);

        state->mshader = glCreateShader(GL_FRAGMENT_SHADER);
        glShaderSource(state->mshader, 1, &mandelbrot_fshader_source, 0);
        glCompileShader(state->mshader);
        check();

        if (state->verbose)
            showlog(state->mshader);


        state->program = glCreateProgram();
        glAttachShader(state->program, state->vshader);
        glAttachShader(state->program, state->fshader);
        glLinkProgram(state->program);
        check();

        if (state->verbose)
            showprogramlog(state->program);

        state->attr_vertex = glGetAttribLocation(state->program, "vertex");
        state->unif_color = glGetUniformLocation(state->program, "color");
        state->unif_scale = glGetUniformLocation(state->program, "scale");
        state->unif_offset = glGetUniformLocation(state->program, "offset");
        state->unif_tex = glGetUniformLocation(state->program, "tex");
        state->unif_centre = glGetUniformLocation(state->program, "centre");


        state->program2 = glCreateProgram();
        glAttachShader(state->program2, state->vshader);
        glAttachShader(state->program2, state->mshader);
        glLinkProgram(state->program2);
        check();

        if (state->verbose)
            showprogramlog(state->program2);

        state->attr_vertex2 = glGetAttribLocation(state->program2, "vertex");
        state->unif_scale2 = glGetUniformLocation(state->program2, "scale");
        state->unif_offset2 = glGetUniformLocation(state->program2, "offset");
        state->unif_centre2 = glGetUniformLocation(state->program2, "centre");
        check();

        glClearColor ( 0.0, 1.0, 1.0, 1.0 );

        glGenBuffers(1, &state->buf);

        check();


        glGenTextures(1, &state->tex);
        check();
        glBindTexture(GL_TEXTURE_2D,state->tex);
        check();

        glTexImage2D(GL_TEXTURE_2D,0,GL_RGB,state->screen_width,state->screen_height,0,GL_RGB,GL_UNSIGNED_SHORT_5_6_5,0);
        check();
        glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        check();

        glGenFramebuffers(1,&state->tex_fb);
        check();
        glBindFramebuffer(GL_FRAMEBUFFER,state->tex_fb);
        check();
        glFramebufferTexture2D(GL_FRAMEBUFFER,GL_COLOR_ATTACHMENT0,GL_TEXTURE_2D,state->tex,0);
        check();
        glBindFramebuffer(GL_FRAMEBUFFER,0);
        check();

        glViewport ( 0, 0, state->screen_width, state->screen_height );
        check();


        glBindBuffer(GL_ARRAY_BUFFER, state->buf);
        glBufferData(GL_ARRAY_BUFFER, sizeof(vertex_data),
                             vertex_data, GL_STATIC_DRAW);
        glVertexAttribPointer(state->attr_vertex, 4, GL_FLOAT, 0, 16, 0);
        glEnableVertexAttribArray(state->attr_vertex);
        glVertexAttribPointer(state->attr_vertex2, 4, GL_FLOAT, 0, 16, 0);
        glEnableVertexAttribArray(state->attr_vertex2);

        check();
}
