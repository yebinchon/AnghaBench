; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gdi_font.c_gdi_render_msg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_gdi_font.c_gdi_render_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, float, float, float, float, float }
%struct.font_params = type { float, float, i32, i32, float, float, float, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.string_list = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@TRANSPARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*, i8*, %struct.font_params*)* @gdi_render_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdi_render_msg(%struct.TYPE_10__* %0, i8* %1, i8* %2, %struct.font_params* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.font_params*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_11__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_12__, align 4
  %33 = alloca %struct.string_list*, align 8
  %34 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.font_params* %3, %struct.font_params** %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %29, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %30, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %31, align 4
  %43 = bitcast %struct.TYPE_12__* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %43, i8 0, i64 12, i1 false)
  store %struct.string_list* null, %struct.string_list** %33, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %45 = icmp ne %struct.TYPE_11__* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %4
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @string_is_empty(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = icmp ne %struct.TYPE_9__* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50, %46, %4
  br label %399

56:                                               ; preds = %50
  %57 = load %struct.font_params*, %struct.font_params** %8, align 8
  %58 = icmp ne %struct.font_params* %57, null
  br i1 %58, label %59, label %96

59:                                               ; preds = %56
  %60 = load %struct.font_params*, %struct.font_params** %8, align 8
  %61 = getelementptr inbounds %struct.font_params, %struct.font_params* %60, i32 0, i32 0
  %62 = load float, float* %61, align 4
  store float %62, float* %9, align 4
  %63 = load %struct.font_params*, %struct.font_params** %8, align 8
  %64 = getelementptr inbounds %struct.font_params, %struct.font_params* %63, i32 0, i32 1
  %65 = load float, float* %64, align 4
  store float %65, float* %10, align 4
  %66 = load %struct.font_params*, %struct.font_params** %8, align 8
  %67 = getelementptr inbounds %struct.font_params, %struct.font_params* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %14, align 4
  %69 = load %struct.font_params*, %struct.font_params** %8, align 8
  %70 = getelementptr inbounds %struct.font_params, %struct.font_params* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %15, align 4
  %72 = load %struct.font_params*, %struct.font_params** %8, align 8
  %73 = getelementptr inbounds %struct.font_params, %struct.font_params* %72, i32 0, i32 4
  %74 = load float, float* %73, align 4
  store float %74, float* %12, align 4
  %75 = load %struct.font_params*, %struct.font_params** %8, align 8
  %76 = getelementptr inbounds %struct.font_params, %struct.font_params* %75, i32 0, i32 5
  %77 = load float, float* %76, align 4
  store float %77, float* %13, align 4
  %78 = load %struct.font_params*, %struct.font_params** %8, align 8
  %79 = getelementptr inbounds %struct.font_params, %struct.font_params* %78, i32 0, i32 6
  %80 = load float, float* %79, align 4
  store float %80, float* %11, align 4
  %81 = load %struct.font_params*, %struct.font_params** %8, align 8
  %82 = getelementptr inbounds %struct.font_params, %struct.font_params* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %22, align 4
  %84 = load %struct.font_params*, %struct.font_params** %8, align 8
  %85 = getelementptr inbounds %struct.font_params, %struct.font_params* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @FONT_COLOR_GET_RED(i32 %86)
  store i32 %87, i32* %23, align 4
  %88 = load %struct.font_params*, %struct.font_params** %8, align 8
  %89 = getelementptr inbounds %struct.font_params, %struct.font_params* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @FONT_COLOR_GET_GREEN(i32 %90)
  store i32 %91, i32* %24, align 4
  %92 = load %struct.font_params*, %struct.font_params** %8, align 8
  %93 = getelementptr inbounds %struct.font_params, %struct.font_params* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @FONT_COLOR_GET_BLUE(i32 %94)
  store i32 %95, i32* %25, align 4
  br label %118

96:                                               ; preds = %56
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load float, float* %98, align 4
  store float %99, float* %9, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load float, float* %101, align 4
  store float %102, float* %10, align 4
  store i32 -2, i32* %14, align 4
  store i32 -2, i32* %15, align 4
  store float 0x3FD3333340000000, float* %12, align 4
  store float 1.000000e+00, float* %13, align 4
  store float 1.000000e+00, float* %11, align 4
  store i32 129, i32* %22, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 4
  %105 = load float, float* %104, align 4
  %106 = fmul float %105, 2.550000e+02
  %107 = fptoui float %106 to i32
  store i32 %107, i32* %23, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 5
  %110 = load float, float* %109, align 4
  %111 = fmul float %110, 2.550000e+02
  %112 = fptoui float %111 to i32
  store i32 %112, i32* %24, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 6
  %115 = load float, float* %114, align 4
  %116 = fmul float %115, 2.550000e+02
  %117 = fptoui float %116 to i32
  store i32 %117, i32* %25, align 4
  br label %118

118:                                              ; preds = %96, %59
  %119 = load i8*, i8** %7, align 8
  %120 = call i32 @strlen(i8* %119)
  store i32 %120, i32* %16, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @GetTextExtentPoint32(i32 %125, i8* %126, i32 %127, %struct.TYPE_12__* %32)
  %129 = load i32, i32* %22, align 4
  switch i32 %129, label %193 [
    i32 129, label %130
    i32 128, label %145
    i32 130, label %168
  ]

130:                                              ; preds = %118
  %131 = load float, float* %9, align 4
  %132 = load i32, i32* %30, align 4
  %133 = uitofp i32 %132 to float
  %134 = fmul float %131, %133
  %135 = load float, float* %11, align 4
  %136 = fmul float %134, %135
  %137 = fptoui float %136 to i32
  store i32 %137, i32* %18, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %30, align 4
  %140 = mul i32 %138, %139
  %141 = uitofp i32 %140 to float
  %142 = load float, float* %11, align 4
  %143 = fmul float %141, %142
  %144 = fptoui float %143 to i32
  store i32 %144, i32* %20, align 4
  br label %194

145:                                              ; preds = %118
  %146 = load float, float* %9, align 4
  %147 = load i32, i32* %30, align 4
  %148 = uitofp i32 %147 to float
  %149 = fmul float %146, %148
  %150 = load float, float* %11, align 4
  %151 = fmul float %149, %150
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = sitofp i32 %153 to float
  %155 = fsub float %151, %154
  %156 = fptoui float %155 to i32
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %30, align 4
  %159 = mul i32 %157, %158
  %160 = uitofp i32 %159 to float
  %161 = load float, float* %11, align 4
  %162 = fmul float %160, %161
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = sitofp i32 %164 to float
  %166 = fsub float %162, %165
  %167 = fptoui float %166 to i32
  store i32 %167, i32* %20, align 4
  br label %194

168:                                              ; preds = %118
  %169 = load float, float* %9, align 4
  %170 = load i32, i32* %30, align 4
  %171 = uitofp i32 %170 to float
  %172 = fmul float %169, %171
  %173 = load float, float* %11, align 4
  %174 = fmul float %172, %173
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = sdiv i32 %176, 2
  %178 = sitofp i32 %177 to float
  %179 = fsub float %174, %178
  %180 = fptoui float %179 to i32
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %30, align 4
  %183 = mul i32 %181, %182
  %184 = uitofp i32 %183 to float
  %185 = load float, float* %11, align 4
  %186 = fmul float %184, %185
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = sdiv i32 %188, 2
  %190 = sitofp i32 %189 to float
  %191 = fsub float %186, %190
  %192 = fptoui float %191 to i32
  store i32 %192, i32* %20, align 4
  br label %194

193:                                              ; preds = %118
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %194

194:                                              ; preds = %193, %168, %145, %130
  %195 = load i32, i32* %31, align 4
  %196 = uitofp i32 %195 to float
  %197 = load float, float* %10, align 4
  %198 = load i32, i32* %31, align 4
  %199 = uitofp i32 %198 to float
  %200 = fmul float %197, %199
  %201 = load float, float* %11, align 4
  %202 = fmul float %200, %201
  %203 = fsub float %196, %202
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = uitofp i32 %205 to float
  %207 = fsub float %203, %206
  %208 = fptoui float %207 to i32
  store i32 %208, i32* %19, align 4
  %209 = load i32, i32* %31, align 4
  %210 = uitofp i32 %209 to float
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* %31, align 4
  %213 = mul i32 %211, %212
  %214 = uitofp i32 %213 to float
  %215 = load float, float* %11, align 4
  %216 = fmul float %214, %215
  %217 = fsub float %210, %216
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = uitofp i32 %219 to float
  %221 = fsub float %217, %220
  %222 = fptoui float %221 to i32
  store i32 %222, i32* %21, align 4
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = call i64 @SelectObject(i32 %227, i64 %232)
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  store i64 %233, i64* %237, align 8
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @TRANSPARENT, align 4
  %244 = call i32 @SetBkMode(i32 %242, i32 %243)
  %245 = load i8*, i8** %7, align 8
  %246 = call %struct.string_list* @string_split(i8* %245, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %246, %struct.string_list** %33, align 8
  %247 = load i32, i32* %14, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %194
  %250 = load i32, i32* %15, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %330

252:                                              ; preds = %249, %194
  %253 = load float, float* %13, align 4
  store float %253, float* %34, align 4
  %254 = load i32, i32* %23, align 4
  %255 = uitofp i32 %254 to float
  %256 = load float, float* %12, align 4
  %257 = fmul float %255, %256
  %258 = load float, float* %34, align 4
  %259 = fmul float %257, %258
  %260 = fptoui float %259 to i32
  store i32 %260, i32* %26, align 4
  %261 = load i32, i32* %24, align 4
  %262 = uitofp i32 %261 to float
  %263 = load float, float* %12, align 4
  %264 = fmul float %262, %263
  %265 = load float, float* %34, align 4
  %266 = fmul float %264, %265
  %267 = fptoui float %266 to i32
  store i32 %267, i32* %27, align 4
  %268 = load i32, i32* %25, align 4
  %269 = uitofp i32 %268 to float
  %270 = load float, float* %12, align 4
  %271 = fmul float %269, %270
  %272 = load float, float* %34, align 4
  %273 = fmul float %271, %272
  %274 = fptoui float %273 to i32
  store i32 %274, i32* %28, align 4
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* %26, align 4
  %281 = load i32, i32* %27, align 4
  %282 = load i32, i32* %28, align 4
  %283 = call i32 @RGB(i32 %280, i32 %281, i32 %282)
  %284 = call i32 @SetTextColor(i32 %279, i32 %283)
  %285 = load %struct.string_list*, %struct.string_list** %33, align 8
  %286 = icmp ne %struct.string_list* %285, null
  br i1 %286, label %287, label %329

287:                                              ; preds = %252
  store i32 0, i32* %17, align 4
  br label %288

288:                                              ; preds = %325, %287
  %289 = load i32, i32* %17, align 4
  %290 = load %struct.string_list*, %struct.string_list** %33, align 8
  %291 = getelementptr inbounds %struct.string_list, %struct.string_list* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp ult i32 %289, %292
  br i1 %293, label %294, label %328

294:                                              ; preds = %288
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* %20, align 4
  %301 = load i32, i32* %21, align 4
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %17, align 4
  %305 = mul i32 %303, %304
  %306 = add i32 %301, %305
  %307 = load %struct.string_list*, %struct.string_list** %33, align 8
  %308 = getelementptr inbounds %struct.string_list, %struct.string_list* %307, i32 0, i32 1
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %308, align 8
  %310 = load i32, i32* %17, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.string_list*, %struct.string_list** %33, align 8
  %316 = getelementptr inbounds %struct.string_list, %struct.string_list* %315, i32 0, i32 1
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %316, align 8
  %318 = load i32, i32* %17, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @utf8len(i32 %322)
  %324 = call i32 @TextOut(i32 %299, i32 %300, i32 %306, i32 %314, i32 %323)
  br label %325

325:                                              ; preds = %294
  %326 = load i32, i32* %17, align 4
  %327 = add i32 %326, 1
  store i32 %327, i32* %17, align 4
  br label %288

328:                                              ; preds = %288
  br label %329

329:                                              ; preds = %328, %252
  br label %330

330:                                              ; preds = %329, %249
  %331 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 0
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* %23, align 4
  %337 = load i32, i32* %24, align 4
  %338 = load i32, i32* %25, align 4
  %339 = call i32 @RGB(i32 %336, i32 %337, i32 %338)
  %340 = call i32 @SetTextColor(i32 %335, i32 %339)
  %341 = load %struct.string_list*, %struct.string_list** %33, align 8
  %342 = icmp ne %struct.string_list* %341, null
  br i1 %342, label %343, label %387

343:                                              ; preds = %330
  store i32 0, i32* %17, align 4
  br label %344

344:                                              ; preds = %381, %343
  %345 = load i32, i32* %17, align 4
  %346 = load %struct.string_list*, %struct.string_list** %33, align 8
  %347 = getelementptr inbounds %struct.string_list, %struct.string_list* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = icmp ult i32 %345, %348
  br i1 %349, label %350, label %384

350:                                              ; preds = %344
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 0
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* %18, align 4
  %357 = load i32, i32* %19, align 4
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* %17, align 4
  %361 = mul i32 %359, %360
  %362 = add i32 %357, %361
  %363 = load %struct.string_list*, %struct.string_list** %33, align 8
  %364 = getelementptr inbounds %struct.string_list, %struct.string_list* %363, i32 0, i32 1
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %364, align 8
  %366 = load i32, i32* %17, align 4
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.string_list*, %struct.string_list** %33, align 8
  %372 = getelementptr inbounds %struct.string_list, %struct.string_list* %371, i32 0, i32 1
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** %372, align 8
  %374 = load i32, i32* %17, align 4
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @utf8len(i32 %378)
  %380 = call i32 @TextOut(i32 %355, i32 %356, i32 %362, i32 %370, i32 %379)
  br label %381

381:                                              ; preds = %350
  %382 = load i32, i32* %17, align 4
  %383 = add i32 %382, 1
  store i32 %383, i32* %17, align 4
  br label %344

384:                                              ; preds = %344
  %385 = load %struct.string_list*, %struct.string_list** %33, align 8
  %386 = call i32 @string_list_free(%struct.string_list* %385)
  br label %387

387:                                              ; preds = %384, %330
  %388 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 0
  %395 = load %struct.TYPE_9__*, %struct.TYPE_9__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = call i64 @SelectObject(i32 %392, i64 %397)
  br label %399

399:                                              ; preds = %387, %55
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @string_is_empty(i8*) #2

declare dso_local i32 @FONT_COLOR_GET_RED(i32) #2

declare dso_local i32 @FONT_COLOR_GET_GREEN(i32) #2

declare dso_local i32 @FONT_COLOR_GET_BLUE(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @GetTextExtentPoint32(i32, i8*, i32, %struct.TYPE_12__*) #2

declare dso_local i64 @SelectObject(i32, i64) #2

declare dso_local i32 @SetBkMode(i32, i32) #2

declare dso_local %struct.string_list* @string_split(i8*, i8*) #2

declare dso_local i32 @SetTextColor(i32, i32) #2

declare dso_local i32 @RGB(i32, i32, i32) #2

declare dso_local i32 @TextOut(i32, i32, i32, i32, i32) #2

declare dso_local i32 @utf8len(i32) #2

declare dso_local i32 @string_list_free(%struct.string_list*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
