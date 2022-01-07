; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_fft.c_fft_render.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_fft.c_fft_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float, i64, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@M_HALF_PI = common dso_local global i64 0, align 8
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_STENCIL_BUFFER_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"uMVP\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"uOffset\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"uHeightmapParams\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"uAngleScale\00", align 1
@M_PI = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@GL_UNSIGNED_INT = common dso_local global i32 0, align 4
@fft_render.attachments = internal constant [2 x i32] [i32 129, i32 128], align 4
@GL_READ_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_DRAW_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fft_render(%struct.TYPE_7__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load float*, float** %9, align 8
  %17 = getelementptr inbounds float, float* %16, i64 0
  store float 0.000000e+00, float* %17, align 4
  %18 = load float*, float** %9, align 8
  %19 = getelementptr inbounds float, float* %18, i64 1
  store float 8.000000e+01, float* %19, align 4
  %20 = load float*, float** %9, align 8
  %21 = getelementptr inbounds float, float* %20, i64 2
  store float -6.000000e+01, float* %21, align 4
  %22 = load float*, float** %11, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  store float 0.000000e+00, float* %23, align 4
  %24 = load float*, float** %11, align 8
  %25 = getelementptr inbounds float, float* %24, i64 1
  store float 1.000000e+00, float* %25, align 4
  %26 = load float*, float** %11, align 8
  %27 = getelementptr inbounds float, float* %26, i64 2
  store float 0.000000e+00, float* %27, align 4
  %28 = load float*, float** %10, align 8
  %29 = getelementptr inbounds float, float* %28, i64 0
  store float 0.000000e+00, float* %29, align 4
  %30 = load float*, float** %10, align 8
  %31 = getelementptr inbounds float, float* %30, i64 1
  store float 0.000000e+00, float* %31, align 4
  %32 = load float*, float** %10, align 8
  %33 = getelementptr inbounds float, float* %32, i64 2
  store float 1.000000e+00, float* %33, align 4
  %34 = load float*, float** %10, align 8
  %35 = load float*, float** %9, align 8
  %36 = call i32 @vec3_add(float* %34, float* %35)
  %37 = load i32, i32* %15, align 4
  %38 = load i64, i64* @M_HALF_PI, align 8
  %39 = sitofp i64 %38 to float
  %40 = load i32, i32* %7, align 4
  %41 = uitofp i32 %40 to float
  %42 = load i32, i32* %8, align 4
  %43 = uitofp i32 %42 to float
  %44 = fdiv float %41, %43
  %45 = call i32 @matrix_4x4_projection(i32 %37, float %39, float %44, float 1.000000e+00, float 5.000000e+02)
  %46 = load i32, i32* %13, align 4
  %47 = load float*, float** %9, align 8
  %48 = load float*, float** %10, align 8
  %49 = load float*, float** %11, align 8
  %50 = call i32 @matrix_4x4_lookat(i32 %46, float* %47, float* %48, float* %49)
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @matrix_4x4_multiply(i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  br label %66

64:                                               ; preds = %4
  %65 = load i64, i64* %6, align 8
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i64 [ %63, %60 ], [ %65, %64 ]
  %68 = call i32 @glBindFramebuffer(i32 %55, i64 %67)
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @glViewport(i32 0, i32 0, i32 %69, i32 %70)
  %72 = call i32 @glClearColor(float 0x3FB99999A0000000, float 0x3FC3333340000000, float 0x3FB99999A0000000, float 1.000000e+00)
  %73 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %74 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @GL_STENCIL_BUFFER_BIT, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @glClear(i32 %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @glUseProgram(i32 %82)
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @MAT_ELEM_4X4(i32 %84, i32 0, i32 0)
  %86 = load i32**, i32*** %12, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @MAT_ELEM_4X4(i32 %90, i32 0, i32 1)
  %92 = load i32**, i32*** %12, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @MAT_ELEM_4X4(i32 %96, i32 0, i32 2)
  %98 = load i32**, i32*** %12, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @MAT_ELEM_4X4(i32 %102, i32 0, i32 3)
  %104 = load i32**, i32*** %12, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @MAT_ELEM_4X4(i32 %108, i32 1, i32 0)
  %110 = load i32**, i32*** %12, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %109, i32* %113, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @MAT_ELEM_4X4(i32 %114, i32 1, i32 1)
  %116 = load i32**, i32*** %12, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @MAT_ELEM_4X4(i32 %120, i32 1, i32 2)
  %122 = load i32**, i32*** %12, align 8
  %123 = getelementptr inbounds i32*, i32** %122, i64 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @MAT_ELEM_4X4(i32 %126, i32 1, i32 3)
  %128 = load i32**, i32*** %12, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @MAT_ELEM_4X4(i32 %132, i32 2, i32 0)
  %134 = load i32**, i32*** %12, align 8
  %135 = getelementptr inbounds i32*, i32** %134, i64 2
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @MAT_ELEM_4X4(i32 %138, i32 2, i32 1)
  %140 = load i32**, i32*** %12, align 8
  %141 = getelementptr inbounds i32*, i32** %140, i64 2
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  store i32 %139, i32* %143, align 4
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @MAT_ELEM_4X4(i32 %144, i32 2, i32 2)
  %146 = load i32**, i32*** %12, align 8
  %147 = getelementptr inbounds i32*, i32** %146, i64 2
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  store i32 %145, i32* %149, align 4
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @MAT_ELEM_4X4(i32 %150, i32 2, i32 3)
  %152 = load i32**, i32*** %12, align 8
  %153 = getelementptr inbounds i32*, i32** %152, i64 2
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 3
  store i32 %151, i32* %155, align 4
  %156 = load i32, i32* %14, align 4
  %157 = call i32 @MAT_ELEM_4X4(i32 %156, i32 3, i32 0)
  %158 = load i32**, i32*** %12, align 8
  %159 = getelementptr inbounds i32*, i32** %158, i64 3
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 %157, i32* %161, align 4
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @MAT_ELEM_4X4(i32 %162, i32 3, i32 1)
  %164 = load i32**, i32*** %12, align 8
  %165 = getelementptr inbounds i32*, i32** %164, i64 3
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  store i32 %163, i32* %167, align 4
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @MAT_ELEM_4X4(i32 %168, i32 3, i32 2)
  %170 = load i32**, i32*** %12, align 8
  %171 = getelementptr inbounds i32*, i32** %170, i64 3
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  store i32 %169, i32* %173, align 4
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @MAT_ELEM_4X4(i32 %174, i32 3, i32 3)
  %176 = load i32**, i32*** %12, align 8
  %177 = getelementptr inbounds i32*, i32** %176, i64 3
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 3
  store i32 %175, i32* %179, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @glGetUniformLocation(i32 %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %185 = load i32, i32* @GL_FALSE, align 4
  %186 = load i32**, i32*** %12, align 8
  %187 = getelementptr inbounds i32*, i32** %186, i64 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = call i32 @glUniformMatrix4fv(i32 %184, i32 1, i32 %185, i32* %189)
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @glGetUniformLocation(i32 %194, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load float, float* %197, align 8
  %199 = fptosi float %198 to i32
  %200 = sub nsw i32 0, %199
  %201 = add nsw i32 %200, 1
  %202 = sdiv i32 %201, 2
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @glUniform2i(i32 %195, i32 %202, i32 %205)
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @glGetUniformLocation(i32 %210, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load float, float* %213, align 8
  %215 = fsub float %214, 1.000000e+00
  %216 = fneg float %215
  %217 = fdiv float %216, 2.000000e+00
  %218 = call i32 @glUniform4f(i32 %211, float %217, float 0.000000e+00, float 3.000000e+00, float 2.000000e+00)
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @glGetUniformLocation(i32 %222, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %224 = load i32, i32* @M_PI, align 4
  %225 = sitofp i32 %224 to float
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  %228 = load float, float* %227, align 8
  %229 = fsub float %228, 1.000000e+00
  %230 = fdiv float %229, 2.000000e+00
  %231 = fdiv float %225, %230
  %232 = fptosi float %231 to i32
  %233 = call i32 @glUniform1f(i32 %223, i32 %232)
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @glBindVertexArray(i32 %237)
  %239 = load i32, i32* @GL_TEXTURE_2D, align 4
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @glBindTexture(i32 %239, i32 %243)
  %245 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @GL_UNSIGNED_INT, align 4
  %251 = call i32 @glDrawElements(i32 %245, i32 %249, i32 %250, i32* null)
  %252 = call i32 @glBindVertexArray(i32 0)
  %253 = call i32 @glUseProgram(i32 0)
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %282

258:                                              ; preds = %66
  %259 = load i32, i32* @GL_READ_FRAMEBUFFER, align 4
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @glBindFramebuffer(i32 %259, i64 %262)
  %264 = load i32, i32* @GL_DRAW_FRAMEBUFFER, align 4
  %265 = load i64, i64* %6, align 8
  %266 = call i32 @glBindFramebuffer(i32 %264, i64 %265)
  %267 = load i32, i32* %7, align 4
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %272 = load i32, i32* @GL_NEAREST, align 4
  %273 = call i32 @glBlitFramebuffer(i32 0, i32 0, i32 %267, i32 %268, i32 0, i32 0, i32 %269, i32 %270, i32 %271, i32 %272)
  %274 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @glBindFramebuffer(i32 %274, i64 %277)
  %279 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %280 = call i32 @glInvalidateFramebuffer(i32 %279, i32 2, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @fft_render.attachments, i64 0, i64 0))
  %281 = call i32 (...) @GL_CHECK_ERROR()
  br label %282

282:                                              ; preds = %258, %66
  %283 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %284 = call i32 @glBindFramebuffer(i32 %283, i64 0)
  %285 = call i32 (...) @GL_CHECK_ERROR()
  ret void
}

declare dso_local i32 @vec3_add(float*, float*) #1

declare dso_local i32 @matrix_4x4_projection(i32, float, float, float, float) #1

declare dso_local i32 @matrix_4x4_lookat(i32, float*, float*, float*) #1

declare dso_local i32 @matrix_4x4_multiply(i32, i32, i32) #1

declare dso_local i32 @glBindFramebuffer(i32, i64) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @MAT_ELEM_4X4(i32, i32, i32) #1

declare dso_local i32 @glUniformMatrix4fv(i32, i32, i32, i32*) #1

declare dso_local i32 @glGetUniformLocation(i32, i8*) #1

declare dso_local i32 @glUniform2i(i32, i32, i32) #1

declare dso_local i32 @glUniform4f(i32, float, float, float, float) #1

declare dso_local i32 @glUniform1f(i32, i32) #1

declare dso_local i32 @glBindVertexArray(i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glDrawElements(i32, i32, i32, i32*) #1

declare dso_local i32 @glBlitFramebuffer(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @glInvalidateFramebuffer(i32, i32, i32*) #1

declare dso_local i32 @GL_CHECK_ERROR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
