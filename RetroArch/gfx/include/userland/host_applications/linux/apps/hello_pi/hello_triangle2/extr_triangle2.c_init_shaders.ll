; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_triangle2/extr_triangle2.c_init_shaders.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_triangle2/extr_triangle2.c_init_shaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@init_shaders.vertex_data = internal constant [16 x double] [double -1.000000e+00, double -1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], align 16
@.str = private unnamed_addr constant [127 x i8] c"attribute vec4 vertex;varying vec2 tcoord;void main(void) { vec4 pos = vertex; gl_Position = pos; tcoord = vertex.xy*0.5+0.5;}\00", align 1
@.str.1 = private unnamed_addr constant [524 x i8] c"uniform vec4 color;uniform vec2 scale;uniform vec2 centre;varying vec2 tcoord;void main(void) {  float intensity;  vec4 color2;  float cr=(gl_FragCoord.x-centre.x)*scale.x;  float ci=(gl_FragCoord.y-centre.y)*scale.y;  float ar=cr;  float ai=ci;  float tr,ti;  float col=0.0;  float p=0.0;  int i=0;  for(int i2=1;i2<16;i2++)  {    tr=ar*ar-ai*ai+cr;    ti=2.0*ar*ai+ci;    p=tr*tr+ti*ti;    ar=tr;    ai=ti;    if (p>16.0)    {      i=i2;      break;    }  }  color2 = vec4(float(i)*0.0625,0,0,1);  gl_FragColor = color2;}\00", align 1
@.str.2 = private unnamed_addr constant [764 x i8] c"uniform vec4 color;uniform vec2 scale;uniform vec2 centre;uniform vec2 offset;varying vec2 tcoord;uniform sampler2D tex;void main(void) {  float intensity;  vec4 color2;  float ar=(gl_FragCoord.x-centre.x)*scale.x;  float ai=(gl_FragCoord.y-centre.y)*scale.y;  float cr=(offset.x-centre.x)*scale.x;  float ci=(offset.y-centre.y)*scale.y;  float tr,ti;  float col=0.0;  float p=0.0;  int i=0;  vec2 t2;  t2.x=tcoord.x+(offset.x-centre.x)*(0.5/centre.y);  t2.y=tcoord.y+(offset.y-centre.y)*(0.5/centre.x);  for(int i2=1;i2<16;i2++)  {    tr=ar*ar-ai*ai+cr;    ti=2.0*ar*ai+ci;    p=tr*tr+ti*ti;    ar=tr;    ai=ti;    if (p>16.0)    {      i=i2;      break;    }  }  color2 = vec4(0,float(i)*0.0625,0,1);  color2 = color2+texture2D(tex,t2);  gl_FragColor = color2;}\00", align 1
@GL_VERTEX_SHADER = common dso_local global i32 0, align 4
@GL_FRAGMENT_SHADER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"vertex\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"centre\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RGB = common dso_local global i32 0, align 4
@GL_UNSIGNED_SHORT_5_6_5 = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@GL_STATIC_DRAW = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @init_shaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_shaders(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([524 x i8], [524 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([764 x i8], [764 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  %6 = load i32, i32* @GL_VERTEX_SHADER, align 4
  %7 = call i8* @glCreateShader(i32 %6)
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 13
  store i8* %7, i8** %9, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 13
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @glShaderSource(i8* %12, i32 1, i8** %3, i32 0)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 13
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @glCompileShader(i8* %16)
  %18 = call i32 (...) @check()
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 11
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 13
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @showlog(i8* %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load i32, i32* @GL_FRAGMENT_SHADER, align 4
  %30 = call i8* @glCreateShader(i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 20
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 20
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @glShaderSource(i8* %35, i32 1, i8** %5, i32 0)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 20
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @glCompileShader(i8* %39)
  %41 = call i32 (...) @check()
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 11
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %28
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 20
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @showlog(i8* %49)
  br label %51

51:                                               ; preds = %46, %28
  %52 = load i32, i32* @GL_FRAGMENT_SHADER, align 4
  %53 = call i8* @glCreateShader(i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 12
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 12
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @glShaderSource(i8* %58, i32 1, i8** %4, i32 0)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 12
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @glCompileShader(i8* %62)
  %64 = call i32 (...) @check()
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 11
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %51
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 12
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @showlog(i8* %72)
  br label %74

74:                                               ; preds = %69, %51
  %75 = call i8* (...) @glCreateProgram()
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 14
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 14
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 13
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @glAttachShader(i8* %80, i8* %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 14
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 20
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @glAttachShader(i8* %87, i8* %90)
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 14
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @glLinkProgram(i8* %94)
  %96 = call i32 (...) @check()
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 11
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %74
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 14
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @showprogramlog(i8* %104)
  br label %106

106:                                              ; preds = %101, %74
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 14
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @glGetAttribLocation(i8* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 14
  %115 = load i8*, i8** %114, align 8
  %116 = call i8* @glGetUniformLocation(i8* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 19
  store i8* %116, i8** %118, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 14
  %121 = load i8*, i8** %120, align 8
  %122 = call i8* @glGetUniformLocation(i8* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 18
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 14
  %127 = load i8*, i8** %126, align 8
  %128 = call i8* @glGetUniformLocation(i8* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 17
  store i8* %128, i8** %130, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 14
  %133 = load i8*, i8** %132, align 8
  %134 = call i8* @glGetUniformLocation(i8* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 16
  store i8* %134, i8** %136, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 14
  %139 = load i8*, i8** %138, align 8
  %140 = call i8* @glGetUniformLocation(i8* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 15
  store i8* %140, i8** %142, align 8
  %143 = call i8* (...) @glCreateProgram()
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 7
  store i8* %143, i8** %145, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 7
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 13
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @glAttachShader(i8* %148, i8* %151)
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 7
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 12
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @glAttachShader(i8* %155, i8* %158)
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 7
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @glLinkProgram(i8* %162)
  %164 = call i32 (...) @check()
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 11
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %106
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 7
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @showprogramlog(i8* %172)
  br label %174

174:                                              ; preds = %169, %106
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 7
  %177 = load i8*, i8** %176, align 8
  %178 = call i8* @glGetAttribLocation(i8* %177, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  store i8* %178, i8** %180, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 7
  %183 = load i8*, i8** %182, align 8
  %184 = call i8* @glGetUniformLocation(i8* %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 10
  store i8* %184, i8** %186, align 8
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 7
  %189 = load i8*, i8** %188, align 8
  %190 = call i8* @glGetUniformLocation(i8* %189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 9
  store i8* %190, i8** %192, align 8
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 7
  %195 = load i8*, i8** %194, align 8
  %196 = call i8* @glGetUniformLocation(i8* %195, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 8
  store i8* %196, i8** %198, align 8
  %199 = call i32 (...) @check()
  %200 = call i32 @glClearColor(double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 2
  %203 = call i32 @glGenBuffers(i32 1, i32* %202)
  %204 = call i32 (...) @check()
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 5
  %207 = call i32 @glGenTextures(i32 1, i32* %206)
  %208 = call i32 (...) @check()
  %209 = load i32, i32* @GL_TEXTURE_2D, align 4
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @glBindTexture(i32 %209, i32 %212)
  %214 = call i32 (...) @check()
  %215 = load i32, i32* @GL_TEXTURE_2D, align 4
  %216 = load i32, i32* @GL_RGB, align 4
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @GL_RGB, align 4
  %224 = load i32, i32* @GL_UNSIGNED_SHORT_5_6_5, align 4
  %225 = call i32 @glTexImage2D(i32 %215, i32 0, i32 %216, i32 %219, i32 %222, i32 0, i32 %223, i32 %224, i32 0)
  %226 = call i32 (...) @check()
  %227 = load i32, i32* @GL_TEXTURE_2D, align 4
  %228 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %229 = load i32, i32* @GL_NEAREST, align 4
  %230 = call i32 @glTexParameterf(i32 %227, i32 %228, i32 %229)
  %231 = load i32, i32* @GL_TEXTURE_2D, align 4
  %232 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %233 = load i32, i32* @GL_NEAREST, align 4
  %234 = call i32 @glTexParameterf(i32 %231, i32 %232, i32 %233)
  %235 = call i32 (...) @check()
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 6
  %238 = call i32 @glGenFramebuffers(i32 1, i32* %237)
  %239 = call i32 (...) @check()
  %240 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @glBindFramebuffer(i32 %240, i32 %243)
  %245 = call i32 (...) @check()
  %246 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %247 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %248 = load i32, i32* @GL_TEXTURE_2D, align 4
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @glFramebufferTexture2D(i32 %246, i32 %247, i32 %248, i32 %251, i32 0)
  %253 = call i32 (...) @check()
  %254 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %255 = call i32 @glBindFramebuffer(i32 %254, i32 0)
  %256 = call i32 (...) @check()
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @glViewport(i32 0, i32 0, i32 %259, i32 %262)
  %264 = call i32 (...) @check()
  %265 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @glBindBuffer(i32 %265, i32 %268)
  %270 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %271 = load i32, i32* @GL_STATIC_DRAW, align 4
  %272 = call i32 @glBufferData(i32 %270, i32 128, double* getelementptr inbounds ([16 x double], [16 x double]* @init_shaders.vertex_data, i64 0, i64 0), i32 %271)
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 1
  %275 = load i8*, i8** %274, align 8
  %276 = load i32, i32* @GL_FLOAT, align 4
  %277 = call i32 @glVertexAttribPointer(i8* %275, i32 4, i32 %276, i32 0, i32 16, i32 0)
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 1
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 @glEnableVertexAttribArray(i8* %280)
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 0
  %284 = load i8*, i8** %283, align 8
  %285 = load i32, i32* @GL_FLOAT, align 4
  %286 = call i32 @glVertexAttribPointer(i8* %284, i32 4, i32 %285, i32 0, i32 16, i32 0)
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 0
  %289 = load i8*, i8** %288, align 8
  %290 = call i32 @glEnableVertexAttribArray(i8* %289)
  %291 = call i32 (...) @check()
  ret void
}

declare dso_local i8* @glCreateShader(i32) #1

declare dso_local i32 @glShaderSource(i8*, i32, i8**, i32) #1

declare dso_local i32 @glCompileShader(i8*) #1

declare dso_local i32 @check(...) #1

declare dso_local i32 @showlog(i8*) #1

declare dso_local i8* @glCreateProgram(...) #1

declare dso_local i32 @glAttachShader(i8*, i8*) #1

declare dso_local i32 @glLinkProgram(i8*) #1

declare dso_local i32 @showprogramlog(i8*) #1

declare dso_local i8* @glGetAttribLocation(i8*, i8*) #1

declare dso_local i8* @glGetUniformLocation(i8*, i8*) #1

declare dso_local i32 @glClearColor(double, double, double, double) #1

declare dso_local i32 @glGenBuffers(i32, i32*) #1

declare dso_local i32 @glGenTextures(i32, i32*) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @glTexParameterf(i32, i32, i32) #1

declare dso_local i32 @glGenFramebuffers(i32, i32*) #1

declare dso_local i32 @glBindFramebuffer(i32, i32) #1

declare dso_local i32 @glFramebufferTexture2D(i32, i32, i32, i32, i32) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glBindBuffer(i32, i32) #1

declare dso_local i32 @glBufferData(i32, i32, double*, i32) #1

declare dso_local i32 @glVertexAttribPointer(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @glEnableVertexAttribArray(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
