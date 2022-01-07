; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_find_uniforms.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_find_uniforms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i32 }
%struct.shader_uniforms = type { i32*, i32*, i32, i32, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"MVPMatrix\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"TexCoord\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"VertexCoord\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"LUTTexCoord\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"InputSize\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"OutputSize\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"TextureSize\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"FrameCount\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"FrameDirection\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Orig\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Feedback\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"PassPrev%u\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Pass%u\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Prev\00", align 1
@PREV_TEXTURES = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"Prev%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, i32, %struct.shader_uniforms*)* @gl_glsl_find_uniforms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_glsl_find_uniforms(%struct.TYPE_12__* %0, i32 %1, i32 %2, %struct.shader_uniforms* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.shader_uniforms*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.shader_uniforms* %3, %struct.shader_uniforms** %8, align 8
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %11, align 16
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @glUseProgram(i32 %12)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i8* @gl_glsl_get_uniform(%struct.TYPE_12__* %14, i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %18 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %17, i32 0, i32 14
  store i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @gl_glsl_get_attrib(%struct.TYPE_12__* %19, i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %23 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %22, i32 0, i32 13
  store i8* %21, i8** %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @gl_glsl_get_attrib(%struct.TYPE_12__* %24, i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %28 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %27, i32 0, i32 12
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i8* @gl_glsl_get_attrib(%struct.TYPE_12__* %29, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %32 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %33 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %32, i32 0, i32 11
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @gl_glsl_get_attrib(%struct.TYPE_12__* %34, i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %37 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %38 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %37, i32 0, i32 10
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @gl_glsl_get_uniform(%struct.TYPE_12__* %39, i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %42 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %43 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %42, i32 0, i32 9
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i8* @gl_glsl_get_uniform(%struct.TYPE_12__* %44, i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %47 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %48 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %47, i32 0, i32 8
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i8* @gl_glsl_get_uniform(%struct.TYPE_12__* %49, i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %52 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %53 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %52, i32 0, i32 7
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i8* @gl_glsl_get_uniform(%struct.TYPE_12__* %54, i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %57 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %58 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i8* @gl_glsl_get_uniform(%struct.TYPE_12__* %59, i32 %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %62 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %63 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %62, i32 0, i32 5
  store i8* %61, i8** %63, align 8
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %91, %4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ult i32 %65, %70
  br i1 %71, label %72, label %94

72:                                               ; preds = %64
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @glGetUniformLocation(i32 %73, i32 %83)
  %85 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %86 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  br label %91

91:                                               ; preds = %72
  %92 = load i32, i32* %9, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %64

94:                                               ; preds = %64
  %95 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %96 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %95, i32 0, i32 2
  %97 = call i32 @gl_glsl_clear_uniforms_frame(i32* %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %101 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %100, i32 0, i32 2
  %102 = call i32 @gl_glsl_find_uniforms_frame(%struct.TYPE_12__* %98, i32 %99, i32* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %103 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %104 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %103, i32 0, i32 3
  %105 = call i32 @gl_glsl_clear_uniforms_frame(i32* %104)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %109 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %108, i32 0, i32 3
  %110 = call i32 @gl_glsl_find_uniforms_frame(%struct.TYPE_12__* %106, i32 %107, i32* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %111 = load i32, i32* %6, align 4
  %112 = icmp ugt i32 %111, 1
  br i1 %112, label %113, label %123

113:                                              ; preds = %94
  %114 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @snprintf(i8* %114, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %115)
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %120 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %119, i32 0, i32 2
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %122 = call i32 @gl_glsl_find_uniforms_frame(%struct.TYPE_12__* %117, i32 %118, i32* %120, i8* %121)
  br label %123

123:                                              ; preds = %113, %94
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %200, %123
  %125 = load i32, i32* %9, align 4
  %126 = add i32 %125, 1
  %127 = load i32, i32* %6, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %203

129:                                              ; preds = %124
  %130 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %131 = load i32, i32* %9, align 4
  %132 = add i32 %131, 1
  %133 = call i32 @snprintf(i8* %130, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %132)
  %134 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %135 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = call i32 @gl_glsl_clear_uniforms_frame(i32* %139)
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %144 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %150 = call i32 @gl_glsl_find_uniforms_frame(%struct.TYPE_12__* %141, i32 %142, i32* %148, i8* %149)
  %151 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %9, align 4
  %154 = add i32 %153, 1
  %155 = sub i32 %152, %154
  %156 = call i32 @snprintf(i8* %151, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %155)
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %160 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %166 = call i32 @gl_glsl_find_uniforms_frame(%struct.TYPE_12__* %157, i32 %158, i32* %164, i8* %165)
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load i8, i8* %176, align 1
  %178 = icmp ne i8 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %129
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %183 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @gl_glsl_find_uniforms_frame(%struct.TYPE_12__* %180, i32 %181, i32* %187, i8* %197)
  br label %199

199:                                              ; preds = %179, %129
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %9, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %9, align 4
  br label %124

203:                                              ; preds = %124
  %204 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %205 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = call i32 @gl_glsl_clear_uniforms_frame(i32* %207)
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %210 = load i32, i32* %7, align 4
  %211 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %212 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = call i32 @gl_glsl_find_uniforms_frame(%struct.TYPE_12__* %209, i32 %210, i32* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %216

216:                                              ; preds = %241, %203
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* @PREV_TEXTURES, align 4
  %219 = icmp ult i32 %217, %218
  br i1 %219, label %220, label %244

220:                                              ; preds = %216
  %221 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %222 = load i32, i32* %9, align 4
  %223 = call i32 @snprintf(i8* %221, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %222)
  %224 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %225 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %9, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = call i32 @gl_glsl_clear_uniforms_frame(i32* %229)
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %232 = load i32, i32* %7, align 4
  %233 = load %struct.shader_uniforms*, %struct.shader_uniforms** %8, align 8
  %234 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %9, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %240 = call i32 @gl_glsl_find_uniforms_frame(%struct.TYPE_12__* %231, i32 %232, i32* %238, i8* %239)
  br label %241

241:                                              ; preds = %220
  %242 = load i32, i32* %9, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %9, align 4
  br label %216

244:                                              ; preds = %216
  %245 = call i32 @glUseProgram(i32 0)
  ret void
}

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i8* @gl_glsl_get_uniform(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i8* @gl_glsl_get_attrib(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @glGetUniformLocation(i32, i32) #1

declare dso_local i32 @gl_glsl_clear_uniforms_frame(i32*) #1

declare dso_local i32 @gl_glsl_find_uniforms_frame(%struct.TYPE_12__*, i32, i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
