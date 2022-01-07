; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vita2d_gfx.c_vita2d_gfx_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vita2d_gfx.c_vita2d_gfx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i64, float, %struct.TYPE_12__, i64, i64, %struct.TYPE_11__, i32*, i64, i32 }
%struct.TYPE_12__ = type { float, float, i32*, i64 }
%struct.TYPE_11__ = type { float, float, i32, i32 }
%struct.font_params = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Creating texture: %ix%i\0A\00", align 1
@SCE_GXM_TEXTURE_FORMAT_X8U8U8U8_1RGB = common dso_local global i64 0, align 8
@PSP_FB_WIDTH = common dso_local global float 0.000000e+00, align 4
@PSP_FB_HEIGHT = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_14__*)* @vita2d_gfx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vita2d_gfx_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_14__* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca %struct.font_params*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store %struct.TYPE_14__* %7, %struct.TYPE_14__** %16, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %18, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %193

38:                                               ; preds = %8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 8
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 8
  %46 = load i32*, i32** %45, align 8
  %47 = call i8* @vita2d_texture_get_datap(i32* %46)
  %48 = load i8*, i8** %10, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %192, label %50

50:                                               ; preds = %43, %38
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56, %50
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 8
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 8
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @vita2d_free_texture(i32* %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 8
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %67, %62, %56
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 8
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %107, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32* @vita2d_create_empty_texture_format(i32 %89, i32 %90, i64 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 8
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 8
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @vita2d_texture_set_filters(i32* %99, i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %79, %74
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 8
  %110 = load i32*, i32** %109, align 8
  %111 = call i8* @vita2d_texture_get_datap(i32* %110)
  store i8* %111, i8** %17, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 8
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @vita2d_texture_get_stride(i32* %114)
  store i32 %115, i32* %20, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SCE_GXM_TEXTURE_FORMAT_X8U8U8U8_1RGB, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %156

121:                                              ; preds = %107
  %122 = load i32, i32* %20, align 4
  %123 = udiv i32 %122, 4
  store i32 %123, i32* %20, align 4
  %124 = load i32, i32* %14, align 4
  %125 = udiv i32 %124, 4
  store i32 %125, i32* %14, align 4
  %126 = load i8*, i8** %17, align 8
  %127 = bitcast i8* %126 to i32*
  store i32* %127, i32** %21, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = bitcast i8* %128 to i32*
  store i32* %129, i32** %22, align 8
  store i32 0, i32* %19, align 4
  br label %130

130:                                              ; preds = %152, %121
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %155

134:                                              ; preds = %130
  %135 = load i32*, i32** %21, align 8
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %20, align 4
  %138 = mul i32 %136, %137
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i32*, i32** %22, align 8
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %14, align 4
  %144 = mul i32 %142, %143
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  %147 = load i32, i32* %14, align 4
  %148 = zext i32 %147 to i64
  %149 = mul i64 %148, 4
  %150 = trunc i64 %149 to i32
  %151 = call i32 @memcpy_neon(i32* %140, i32* %146, i32 %150)
  br label %152

152:                                              ; preds = %134
  %153 = load i32, i32* %19, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %19, align 4
  br label %130

155:                                              ; preds = %130
  br label %191

156:                                              ; preds = %107
  %157 = load i32, i32* %20, align 4
  %158 = udiv i32 %157, 2
  store i32 %158, i32* %20, align 4
  %159 = load i32, i32* %14, align 4
  %160 = udiv i32 %159, 2
  store i32 %160, i32* %14, align 4
  %161 = load i8*, i8** %17, align 8
  %162 = bitcast i8* %161 to i32*
  store i32* %162, i32** %23, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = bitcast i8* %163 to i32*
  store i32* %164, i32** %24, align 8
  store i32 0, i32* %19, align 4
  br label %165

165:                                              ; preds = %187, %156
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %190

169:                                              ; preds = %165
  %170 = load i32*, i32** %23, align 8
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %20, align 4
  %173 = mul i32 %171, %172
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  %176 = load i32*, i32** %24, align 8
  %177 = load i32, i32* %19, align 4
  %178 = load i32, i32* %14, align 4
  %179 = mul i32 %177, %178
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %176, i64 %180
  %182 = load i32, i32* %11, align 4
  %183 = zext i32 %182 to i64
  %184 = mul i64 %183, 4
  %185 = trunc i64 %184 to i32
  %186 = call i32 @memcpy_neon(i32* %175, i32* %181, i32 %185)
  br label %187

187:                                              ; preds = %169
  %188 = load i32, i32* %19, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %19, align 4
  br label %165

190:                                              ; preds = %165
  br label %191

191:                                              ; preds = %190, %155
  br label %192

192:                                              ; preds = %191, %43
  br label %193

193:                                              ; preds = %192, %8
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 9
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %201 = call i32 @vita2d_gfx_update_viewport(%struct.TYPE_13__* %199, %struct.TYPE_14__* %200)
  br label %202

202:                                              ; preds = %198, %193
  %203 = call i32 (...) @vita2d_start_drawing()
  %204 = load float, float* @PSP_FB_WIDTH, align 4
  %205 = load float, float* @PSP_FB_HEIGHT, align 4
  %206 = call i32 (...) @vita2d_get_clear_color()
  %207 = call i32 @vita2d_draw_rectangle(i32 0, i32 0, float %204, float %205, i32 %206)
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 8
  %210 = load i32*, i32** %209, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %273

212:                                              ; preds = %202
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %234

217:                                              ; preds = %212
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 8
  %220 = load i32*, i32** %219, align 8
  %221 = load float, float* @PSP_FB_WIDTH, align 4
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = uitofp i32 %224 to float
  %226 = fdiv float %221, %225
  %227 = load float, float* @PSP_FB_HEIGHT, align 4
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = uitofp i32 %230 to float
  %232 = fdiv float %227, %231
  %233 = call i32 @vita2d_draw_texture_scale(i32* %220, float 0.000000e+00, float 0.000000e+00, float %226, float %232)
  br label %272

234:                                              ; preds = %212
  store float 0x3FF921FB60000000, float* %25, align 4
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 3
  %237 = load float, float* %236, align 8
  %238 = fmul float %237, 0x3FF921FB60000000
  store float %238, float* %26, align 4
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 7
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 0
  %242 = load float, float* %241, align 8
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = uitofp i32 %245 to float
  %247 = fdiv float %242, %246
  store float %247, float* %27, align 4
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 7
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 1
  %251 = load float, float* %250, align 4
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = uitofp i32 %254 to float
  %256 = fdiv float %251, %255
  store float %256, float* %28, align 4
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 8
  %259 = load i32*, i32** %258, align 8
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 7
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 7
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load float, float* %27, align 4
  %269 = load float, float* %28, align 4
  %270 = load float, float* %26, align 4
  %271 = call i32 @vita2d_draw_texture_scale_rotate(i32* %259, i32 %263, i32 %267, float %268, float %269, float %270)
  br label %272

272:                                              ; preds = %234, %217
  br label %273

273:                                              ; preds = %272, %202
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 4
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 3
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %371

279:                                              ; preds = %273
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 4
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 2
  %283 = load i32*, i32** %282, align 8
  %284 = icmp ne i32* %283, null
  br i1 %284, label %285, label %370

285:                                              ; preds = %279
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 5
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %308

290:                                              ; preds = %285
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 4
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 2
  %294 = load i32*, i32** %293, align 8
  %295 = load float, float* @PSP_FB_WIDTH, align 4
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 4
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 0
  %299 = load float, float* %298, align 8
  %300 = fdiv float %295, %299
  %301 = load float, float* @PSP_FB_HEIGHT, align 4
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 4
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 1
  %305 = load float, float* %304, align 4
  %306 = fdiv float %301, %305
  %307 = call i32 @vita2d_draw_texture_scale(i32* %294, float 0.000000e+00, float 0.000000e+00, float %300, float %306)
  br label %369

308:                                              ; preds = %285
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 4
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 0
  %312 = load float, float* %311, align 8
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 4
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 1
  %316 = load float, float* %315, align 4
  %317 = fcmp ogt float %312, %316
  br i1 %317, label %318, label %343

318:                                              ; preds = %308
  %319 = load float, float* @PSP_FB_HEIGHT, align 4
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 4
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 1
  %323 = load float, float* %322, align 4
  %324 = fdiv float %319, %323
  store float %324, float* %29, align 4
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 4
  %327 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i32 0, i32 0
  %328 = load float, float* %327, align 8
  %329 = load float, float* %29, align 4
  %330 = fmul float %328, %329
  store float %330, float* %30, align 4
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 2
  %334 = load i32*, i32** %333, align 8
  %335 = load float, float* @PSP_FB_WIDTH, align 4
  %336 = fdiv float %335, 2.000000e+00
  %337 = load float, float* %30, align 4
  %338 = fdiv float %337, 2.000000e+00
  %339 = fsub float %336, %338
  %340 = load float, float* %29, align 4
  %341 = load float, float* %29, align 4
  %342 = call i32 @vita2d_draw_texture_scale(i32* %334, float %339, float 0.000000e+00, float %340, float %341)
  br label %368

343:                                              ; preds = %308
  %344 = load float, float* @PSP_FB_WIDTH, align 4
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 4
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 0
  %348 = load float, float* %347, align 8
  %349 = fdiv float %344, %348
  store float %349, float* %31, align 4
  %350 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 4
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 1
  %353 = load float, float* %352, align 4
  %354 = load float, float* %31, align 4
  %355 = fmul float %353, %354
  store float %355, float* %32, align 4
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 4
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 2
  %359 = load i32*, i32** %358, align 8
  %360 = load float, float* @PSP_FB_HEIGHT, align 4
  %361 = fdiv float %360, 2.000000e+00
  %362 = load float, float* %32, align 4
  %363 = fdiv float %362, 2.000000e+00
  %364 = fsub float %361, %363
  %365 = load float, float* %31, align 4
  %366 = load float, float* %31, align 4
  %367 = call i32 @vita2d_draw_texture_scale(i32* %359, float 0.000000e+00, float %364, float %365, float %366)
  br label %368

368:                                              ; preds = %343, %318
  br label %369

369:                                              ; preds = %368, %290
  br label %370

370:                                              ; preds = %369, %279
  br label %393

371:                                              ; preds = %273
  %372 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %392

376:                                              ; preds = %371
  %377 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i32 0, i32 1
  %379 = bitcast i32* %378 to %struct.font_params*
  store %struct.font_params* %379, %struct.font_params** %33, align 8
  %380 = load %struct.font_params*, %struct.font_params** %33, align 8
  %381 = icmp ne %struct.font_params* %380, null
  br i1 %381, label %382, label %391

382:                                              ; preds = %376
  %383 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 0
  %386 = load i8*, i8** %385, align 8
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 1
  %389 = bitcast i32* %388 to %struct.font_params*
  %390 = call i32 @font_driver_render_msg(%struct.TYPE_14__* %383, i32* null, i8* %386, %struct.font_params* %389)
  br label %391

391:                                              ; preds = %382, %376
  br label %392

392:                                              ; preds = %391, %371
  br label %393

393:                                              ; preds = %392, %370
  %394 = load i8*, i8** %15, align 8
  %395 = call i32 @string_is_empty(i8* %394)
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %401, label %397

397:                                              ; preds = %393
  %398 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %399 = load i8*, i8** %15, align 8
  %400 = call i32 @font_driver_render_msg(%struct.TYPE_14__* %398, i32* null, i8* %399, %struct.font_params* null)
  br label %401

401:                                              ; preds = %397, %393
  %402 = call i32 (...) @vita2d_end_drawing()
  %403 = call i32 (...) @vita2d_swap_buffers()
  ret i32 1
}

declare dso_local i8* @vita2d_texture_get_datap(i32*) #1

declare dso_local i32 @vita2d_free_texture(i32*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32) #1

declare dso_local i32* @vita2d_create_empty_texture_format(i32, i32, i64) #1

declare dso_local i32 @vita2d_texture_set_filters(i32*, i32, i32) #1

declare dso_local i32 @vita2d_texture_get_stride(i32*) #1

declare dso_local i32 @memcpy_neon(i32*, i32*, i32) #1

declare dso_local i32 @vita2d_gfx_update_viewport(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @vita2d_start_drawing(...) #1

declare dso_local i32 @vita2d_draw_rectangle(i32, i32, float, float, i32) #1

declare dso_local i32 @vita2d_get_clear_color(...) #1

declare dso_local i32 @vita2d_draw_texture_scale(i32*, float, float, float, float) #1

declare dso_local i32 @vita2d_draw_texture_scale_rotate(i32*, i32, i32, float, float, float) #1

declare dso_local i32 @font_driver_render_msg(%struct.TYPE_14__*, i32*, i8*, %struct.font_params*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @vita2d_end_drawing(...) #1

declare dso_local i32 @vita2d_swap_buffers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
