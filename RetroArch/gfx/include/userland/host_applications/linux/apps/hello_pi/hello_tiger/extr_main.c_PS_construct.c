
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ VGPaintMode ;
struct TYPE_5__ {int m_numPaths; TYPE_1__* m_paths; } ;
struct TYPE_4__ {float m_miterLimit; float m_strokeWidth; int m_path; void* m_fillPaint; void* m_strokePaint; int m_joinStyle; int m_capStyle; scalar_t__ m_paintMode; void* m_fillRule; } ;
typedef TYPE_1__ PathData ;
typedef TYPE_2__ PS ;


 int UNREF (int) ;
 unsigned char VG_ABSOLUTE ;
 int VG_CAP_BUTT ;
 int VG_CAP_ROUND ;
 int VG_CAP_SQUARE ;
 unsigned char VG_CLOSE_PATH ;
 unsigned char VG_CUBIC_TO ;
 void* VG_EVEN_ODD ;
 int VG_FILL_PATH ;
 int VG_JOIN_BEVEL ;
 int VG_JOIN_MITER ;
 int VG_JOIN_ROUND ;
 unsigned char VG_LINE_TO ;
 unsigned char VG_MOVE_TO ;
 void* VG_NON_ZERO ;
 int VG_PAINT_COLOR ;
 int VG_PAINT_TYPE ;
 int VG_PAINT_TYPE_COLOR ;
 scalar_t__ VG_PATH_CAPABILITY_ALL ;
 int VG_PATH_DATATYPE_F ;
 int VG_PATH_FORMAT_STANDARD ;
 int VG_STROKE_PATH ;
 int assert (int) ;
 int free (unsigned char*) ;
 scalar_t__ malloc (int) ;
 int vgAppendPathData (int ,int,unsigned char*,float const*) ;
 void* vgCreatePaint () ;
 int vgCreatePath (int ,int ,float,float,int ,int ,unsigned int) ;
 int vgSetParameterfv (void*,int ,int,float*) ;
 int vgSetParameteri (void*,int ,int ) ;

PS* PS_construct(const char* commands, int commandCount, const float* points, int pointCount)
{
 PS* ps = (PS*)malloc(sizeof(PS));
 int p = 0;
 int c = 0;
 int i = 0;
 int paths = 0;
 int maxElements = 0;
 unsigned char* cmd;
 UNREF(pointCount);

 while(c < commandCount)
 {
  int elements, e;
  c += 4;
  p += 8;
  elements = (int)points[p++];
  assert(elements > 0);
  if(elements > maxElements)
   maxElements = elements;
  for(e=0;e<elements;e++)
  {
   switch(commands[c])
   {
   case 'M': p += 2; break;
   case 'L': p += 2; break;
   case 'C': p += 6; break;
   case 'E': break;
   default:
    assert(0);
   }
   c++;
  }
  paths++;
 }

 ps->m_numPaths = paths;
 ps->m_paths = (PathData*)malloc(paths * sizeof(PathData));
 cmd = (unsigned char*)malloc(maxElements);

 i = 0;
 p = 0;
 c = 0;
 while(c < commandCount)
 {
  int elements, startp, e;
  float color[4];


  int paintMode = 0;
  ps->m_paths[i].m_fillRule = VG_NON_ZERO;
  switch( commands[c] )
  {
  case 'N':
   break;
  case 'F':
   ps->m_paths[i].m_fillRule = VG_NON_ZERO;
   paintMode |= VG_FILL_PATH;
   break;
  case 'E':
   ps->m_paths[i].m_fillRule = VG_EVEN_ODD;
   paintMode |= VG_FILL_PATH;
   break;
  default:
   assert(0);
  }
  c++;


  switch( commands[c] )
  {
  case 'N':
   break;
  case 'S':
   paintMode |= VG_STROKE_PATH;
   break;
  default:
   assert(0);
  }
  ps->m_paths[i].m_paintMode = (VGPaintMode)paintMode;
  c++;


  switch( commands[c] )
  {
  case 'B':
   ps->m_paths[i].m_capStyle = VG_CAP_BUTT;
   break;
  case 'R':
   ps->m_paths[i].m_capStyle = VG_CAP_ROUND;
   break;
  case 'S':
   ps->m_paths[i].m_capStyle = VG_CAP_SQUARE;
   break;
  default:
   assert(0);
  }
  c++;


  switch( commands[c] )
  {
  case 'M':
   ps->m_paths[i].m_joinStyle = VG_JOIN_MITER;
   break;
  case 'R':
   ps->m_paths[i].m_joinStyle = VG_JOIN_ROUND;
   break;
  case 'B':
   ps->m_paths[i].m_joinStyle = VG_JOIN_BEVEL;
   break;
  default:
   assert(0);
  }
  c++;


  ps->m_paths[i].m_miterLimit = points[p++];
  ps->m_paths[i].m_strokeWidth = points[p++];


  color[0] = points[p++];
  color[1] = points[p++];
  color[2] = points[p++];
  color[3] = 1.0f;
  ps->m_paths[i].m_strokePaint = vgCreatePaint();
  vgSetParameteri(ps->m_paths[i].m_strokePaint, VG_PAINT_TYPE, VG_PAINT_TYPE_COLOR);
  vgSetParameterfv(ps->m_paths[i].m_strokePaint, VG_PAINT_COLOR, 4, color);

  color[0] = points[p++];
  color[1] = points[p++];
  color[2] = points[p++];
  color[3] = 1.0f;
  ps->m_paths[i].m_fillPaint = vgCreatePaint();
  vgSetParameteri(ps->m_paths[i].m_fillPaint, VG_PAINT_TYPE, VG_PAINT_TYPE_COLOR);
  vgSetParameterfv(ps->m_paths[i].m_fillPaint, VG_PAINT_COLOR, 4, color);



  elements = (int)points[p++];
  assert(elements > 0);
  startp = p;
  for(e=0;e<elements;e++)
  {
   switch( commands[c] )
   {
   case 'M':
    cmd[e] = VG_MOVE_TO | VG_ABSOLUTE;
    p += 2;
    break;
   case 'L':
    cmd[e] = VG_LINE_TO | VG_ABSOLUTE;
    p += 2;
    break;
   case 'C':
    cmd[e] = VG_CUBIC_TO | VG_ABSOLUTE;
    p += 6;
    break;
   case 'E':
    cmd[e] = VG_CLOSE_PATH;
    break;
   default:
    assert(0);
   }
   c++;
  }

  ps->m_paths[i].m_path = vgCreatePath(VG_PATH_FORMAT_STANDARD, VG_PATH_DATATYPE_F, 1.0f, 0.0f, 0, 0, (unsigned int)VG_PATH_CAPABILITY_ALL);
  vgAppendPathData(ps->m_paths[i].m_path, elements, cmd, points + startp);
  i++;
 }
 free(cmd);
 return ps;
}
