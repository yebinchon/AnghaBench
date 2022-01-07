; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl_raster_font.c_gl_raster_font_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gl_raster_font.c_gl_raster_font_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, float, float, float, float, float }
%struct.font_params = type { float, float, float, i32, i32, i32, i32, float, float, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, %struct.TYPE_11__*, i64, i64 }
%struct.TYPE_12__ = type { i64, i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { float, float }
%struct.TYPE_11__ = type { i32 }

@TEXT_ALIGN_LEFT = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i8*, i8*, %struct.font_params*)* @gl_raster_font_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_raster_font_render_msg(%struct.TYPE_13__* %0, i8* %1, i8* %2, %struct.font_params* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.font_params*, align 8
  %9 = alloca [4 x float], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [4 x float], align 16
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.font_params* %3, %struct.font_params** %8, align 8
  %23 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  store i32 %23, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %19, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %20, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %21, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @string_is_empty(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %4
  br label %269

39:                                               ; preds = %34
  %40 = load %struct.font_params*, %struct.font_params** %8, align 8
  %41 = icmp ne %struct.font_params* %40, null
  br i1 %41, label %42, label %100

42:                                               ; preds = %39
  %43 = load %struct.font_params*, %struct.font_params** %8, align 8
  %44 = getelementptr inbounds %struct.font_params, %struct.font_params* %43, i32 0, i32 0
  %45 = load float, float* %44, align 4
  store float %45, float* %12, align 4
  %46 = load %struct.font_params*, %struct.font_params** %8, align 8
  %47 = getelementptr inbounds %struct.font_params, %struct.font_params* %46, i32 0, i32 1
  %48 = load float, float* %47, align 4
  store float %48, float* %13, align 4
  %49 = load %struct.font_params*, %struct.font_params** %8, align 8
  %50 = getelementptr inbounds %struct.font_params, %struct.font_params* %49, i32 0, i32 2
  %51 = load float, float* %50, align 4
  store float %51, float* %14, align 4
  %52 = load %struct.font_params*, %struct.font_params** %8, align 8
  %53 = getelementptr inbounds %struct.font_params, %struct.font_params* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %18, align 4
  %55 = load %struct.font_params*, %struct.font_params** %8, align 8
  %56 = getelementptr inbounds %struct.font_params, %struct.font_params* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %17, align 4
  %58 = load %struct.font_params*, %struct.font_params** %8, align 8
  %59 = getelementptr inbounds %struct.font_params, %struct.font_params* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %10, align 4
  %61 = load %struct.font_params*, %struct.font_params** %8, align 8
  %62 = getelementptr inbounds %struct.font_params, %struct.font_params* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %11, align 4
  %64 = load %struct.font_params*, %struct.font_params** %8, align 8
  %65 = getelementptr inbounds %struct.font_params, %struct.font_params* %64, i32 0, i32 7
  %66 = load float, float* %65, align 4
  store float %66, float* %15, align 4
  %67 = load %struct.font_params*, %struct.font_params** %8, align 8
  %68 = getelementptr inbounds %struct.font_params, %struct.font_params* %67, i32 0, i32 8
  %69 = load float, float* %68, align 4
  store float %69, float* %16, align 4
  %70 = load %struct.font_params*, %struct.font_params** %8, align 8
  %71 = getelementptr inbounds %struct.font_params, %struct.font_params* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = call float @FONT_COLOR_GET_RED(i32 %72)
  %74 = fdiv float %73, 2.550000e+02
  %75 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 0
  store float %74, float* %75, align 16
  %76 = load %struct.font_params*, %struct.font_params** %8, align 8
  %77 = getelementptr inbounds %struct.font_params, %struct.font_params* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = call float @FONT_COLOR_GET_GREEN(i32 %78)
  %80 = fdiv float %79, 2.550000e+02
  %81 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 1
  store float %80, float* %81, align 4
  %82 = load %struct.font_params*, %struct.font_params** %8, align 8
  %83 = getelementptr inbounds %struct.font_params, %struct.font_params* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = call float @FONT_COLOR_GET_BLUE(i32 %84)
  %86 = fdiv float %85, 2.550000e+02
  %87 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 2
  store float %86, float* %87, align 8
  %88 = load %struct.font_params*, %struct.font_params** %8, align 8
  %89 = getelementptr inbounds %struct.font_params, %struct.font_params* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 4
  %91 = call float @FONT_COLOR_GET_ALPHA(i32 %90)
  %92 = fdiv float %91, 2.550000e+02
  %93 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 3
  store float %92, float* %93, align 4
  %94 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 3
  %95 = load float, float* %94, align 4
  %96 = fcmp ole float %95, 0.000000e+00
  br i1 %96, label %97, label %99

97:                                               ; preds = %42
  %98 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 3
  store float 1.000000e+00, float* %98, align 4
  br label %99

99:                                               ; preds = %97, %42
  br label %121

100:                                              ; preds = %39
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  %103 = load float, float* %102, align 4
  store float %103, float* %12, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  %106 = load float, float* %105, align 4
  store float %106, float* %13, align 4
  store float 1.000000e+00, float* %14, align 4
  store i32 1, i32* %18, align 4
  %107 = load i32, i32* @TEXT_ALIGN_LEFT, align 4
  store i32 %107, i32* %17, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 4
  %110 = load float, float* %109, align 4
  %111 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 0
  store float %110, float* %111, align 16
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 5
  %114 = load float, float* %113, align 4
  %115 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 1
  store float %114, float* %115, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 6
  %118 = load float, float* %117, align 4
  %119 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 2
  store float %118, float* %119, align 8
  %120 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 3
  store float 1.000000e+00, float* %120, align 4
  store i32 -2, i32* %10, align 4
  store i32 -2, i32* %11, align 4
  store float 0x3FD3333340000000, float* %15, align 4
  store float 1.000000e+00, float* %16, align 4
  br label %121

121:                                              ; preds = %100, %99
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = icmp ne %struct.TYPE_11__* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i32, i32* %18, align 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  store i32 %127, i32* %131, align 4
  br label %138

132:                                              ; preds = %121
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* %21, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %136 = load i32, i32* %18, align 4
  %137 = call i32 @gl_raster_font_setup_viewport(i32 %133, i32 %134, %struct.TYPE_14__* %135, i32 %136)
  br label %138

138:                                              ; preds = %132, %126
  %139 = load i8*, i8** %7, align 8
  %140 = call i64 @string_is_empty(i8* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %239, label %142

142:                                              ; preds = %138
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = icmp ne %struct.TYPE_12__* %145, null
  br i1 %146, label %147, label %239

147:                                              ; preds = %142
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %239

152:                                              ; preds = %147
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %239

157:                                              ; preds = %152
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %223

163:                                              ; preds = %160, %157
  %164 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 0
  %165 = load float, float* %164, align 16
  %166 = load float, float* %15, align 4
  %167 = fmul float %165, %166
  %168 = getelementptr inbounds [4 x float], [4 x float]* %22, i64 0, i64 0
  store float %167, float* %168, align 16
  %169 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 1
  %170 = load float, float* %169, align 4
  %171 = load float, float* %15, align 4
  %172 = fmul float %170, %171
  %173 = getelementptr inbounds [4 x float], [4 x float]* %22, i64 0, i64 1
  store float %172, float* %173, align 4
  %174 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 2
  %175 = load float, float* %174, align 8
  %176 = load float, float* %15, align 4
  %177 = fmul float %175, %176
  %178 = getelementptr inbounds [4 x float], [4 x float]* %22, i64 0, i64 2
  store float %177, float* %178, align 8
  %179 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 3
  %180 = load float, float* %179, align 4
  %181 = load float, float* %16, align 4
  %182 = fmul float %180, %181
  %183 = getelementptr inbounds [4 x float], [4 x float]* %22, i64 0, i64 3
  store float %182, float* %183, align 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %185, align 8
  %187 = icmp ne %struct.TYPE_12__* %186, null
  br i1 %187, label %188, label %222

188:                                              ; preds = %163
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %190 = load i8*, i8** %7, align 8
  %191 = load float, float* %14, align 4
  %192 = getelementptr inbounds [4 x float], [4 x float]* %22, i64 0, i64 0
  %193 = load float, float* %12, align 4
  %194 = load float, float* %14, align 4
  %195 = load i32, i32* %10, align 4
  %196 = sitofp i32 %195 to float
  %197 = fmul float %194, %196
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load float, float* %202, align 8
  %204 = fdiv float %197, %203
  %205 = fadd float %193, %204
  %206 = load float, float* %13, align 4
  %207 = load float, float* %14, align 4
  %208 = load i32, i32* %11, align 4
  %209 = sitofp i32 %208 to float
  %210 = fmul float %207, %209
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  %216 = load float, float* %215, align 4
  %217 = fdiv float %210, %216
  %218 = fadd float %206, %217
  %219 = load i32, i32* %17, align 4
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %221 = call i32 @gl_raster_font_render_message(%struct.TYPE_14__* %189, i8* %190, float %191, float* %192, float %205, float %218, i32 %219, %struct.TYPE_13__* %220)
  br label %222

222:                                              ; preds = %188, %163
  br label %223

223:                                              ; preds = %222, %160
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %225, align 8
  %227 = icmp ne %struct.TYPE_12__* %226, null
  br i1 %227, label %228, label %238

228:                                              ; preds = %223
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %230 = load i8*, i8** %7, align 8
  %231 = load float, float* %14, align 4
  %232 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 0
  %233 = load float, float* %12, align 4
  %234 = load float, float* %13, align 4
  %235 = load i32, i32* %17, align 4
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %237 = call i32 @gl_raster_font_render_message(%struct.TYPE_14__* %229, i8* %230, float %231, float* %232, float %233, float %234, i32 %235, %struct.TYPE_13__* %236)
  br label %238

238:                                              ; preds = %228, %223
  br label %239

239:                                              ; preds = %238, %152, %147, %142, %138
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %241, align 8
  %243 = icmp ne %struct.TYPE_11__* %242, null
  br i1 %243, label %269, label %244

244:                                              ; preds = %239
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %246, align 8
  %248 = icmp ne %struct.TYPE_12__* %247, null
  br i1 %248, label %249, label %269

249:                                              ; preds = %244
  %250 = load i32, i32* @GL_TEXTURE_2D, align 4
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds i32, i32* %255, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @glBindTexture(i32 %250, i32 %262)
  %264 = load i32, i32* @GL_BLEND, align 4
  %265 = call i32 @glDisable(i32 %264)
  %266 = load i32, i32* %20, align 4
  %267 = load i32, i32* %21, align 4
  %268 = call i32 @video_driver_set_viewport(i32 %266, i32 %267, i32 0, i32 1)
  br label %269

269:                                              ; preds = %38, %249, %244, %239
  ret void
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local float @FONT_COLOR_GET_RED(i32) #1

declare dso_local float @FONT_COLOR_GET_GREEN(i32) #1

declare dso_local float @FONT_COLOR_GET_BLUE(i32) #1

declare dso_local float @FONT_COLOR_GET_ALPHA(i32) #1

declare dso_local i32 @gl_raster_font_setup_viewport(i32, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @gl_raster_font_render_message(%struct.TYPE_14__*, i8*, float, float*, float, float, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glDisable(i32) #1

declare dso_local i32 @video_driver_set_viewport(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
