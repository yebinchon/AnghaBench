; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_read_viewport.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_read_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vk_texture = type { i64, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.scaler_ctx, %struct.scaler_ctx, i64, %struct.vk_texture* }
%struct.scaler_ctx = type { i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"[Vulkan]: Unexpected swapchain format. Cannot readback.\0A\00", align 1
@VK_NULL_HANDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"[Vulkan]: Unexpected swapchain format.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @vulkan_read_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vulkan_read_viewport(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vk_texture*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.scaler_ctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.vk_texture* null, %struct.vk_texture** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %9, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %346

20:                                               ; preds = %3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  %24 = load %struct.vk_texture*, %struct.vk_texture** %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %24, i64 %29
  store %struct.vk_texture* %30, %struct.vk_texture** %8, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %123

36:                                               ; preds = %20
  store i32* null, i32** %10, align 8
  store %struct.scaler_ctx* null, %struct.scaler_ctx** %11, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %50 [
    i32 128, label %42
    i32 130, label %42
    i32 129, label %46
  ]

42:                                               ; preds = %36, %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store %struct.scaler_ctx* %45, %struct.scaler_ctx** %11, align 8
  br label %52

46:                                               ; preds = %36
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store %struct.scaler_ctx* %49, %struct.scaler_ctx** %11, align 8
  br label %52

50:                                               ; preds = %36
  %51 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46, %42
  %53 = load %struct.scaler_ctx*, %struct.scaler_ctx** %11, align 8
  %54 = icmp ne %struct.scaler_ctx* %53, null
  br i1 %54, label %55, label %122

55:                                               ; preds = %52
  %56 = load %struct.vk_texture*, %struct.vk_texture** %8, align 8
  %57 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @VK_NULL_HANDLE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %346

62:                                               ; preds = %55
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = mul nsw i32 3, %67
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %68, %72
  %74 = load i32*, i32** %6, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %6, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.vk_texture*, %struct.vk_texture** %8, align 8
  %83 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.vk_texture*, %struct.vk_texture** %8, align 8
  %86 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.vk_texture*, %struct.vk_texture** %8, align 8
  %89 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = bitcast i32** %10 to i8**
  %92 = call i32 @vkMapMemory(i32 %81, i64 %84, i32 %87, i32 %90, i32 0, i8** %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = load %struct.vk_texture*, %struct.vk_texture** %8, align 8
  %95 = call i32 @vulkan_sync_texture_to_cpu(%struct.TYPE_9__* %93, %struct.vk_texture* %94)
  %96 = load %struct.vk_texture*, %struct.vk_texture** %8, align 8
  %97 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.scaler_ctx*, %struct.scaler_ctx** %11, align 8
  %100 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 0, %104
  %106 = mul nsw i32 %105, 3
  %107 = load %struct.scaler_ctx*, %struct.scaler_ctx** %11, align 8
  %108 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.scaler_ctx*, %struct.scaler_ctx** %11, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = call i32 @scaler_ctx_scale_direct(%struct.scaler_ctx* %109, i32* %110, i32* %111)
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.vk_texture*, %struct.vk_texture** %8, align 8
  %119 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @vkUnmapMemory(i32 %117, i64 %120)
  br label %122

122:                                              ; preds = %62, %52
  br label %345

123:                                              ; preds = %20
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %123
  %130 = call i32 (...) @video_driver_cached_frame()
  br label %131

131:                                              ; preds = %129, %123
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @vkQueueWaitIdle(i32 %136)
  %138 = load %struct.vk_texture*, %struct.vk_texture** %8, align 8
  %139 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %131
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.vk_texture*, %struct.vk_texture** %8, align 8
  %149 = call i32 @vulkan_map_persistent_texture(i32 %147, %struct.vk_texture* %148)
  br label %150

150:                                              ; preds = %142, %131
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %152 = load %struct.vk_texture*, %struct.vk_texture** %8, align 8
  %153 = call i32 @vulkan_sync_texture_to_cpu(%struct.TYPE_9__* %151, %struct.vk_texture* %152)
  %154 = load %struct.vk_texture*, %struct.vk_texture** %8, align 8
  %155 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to i32*
  store i32* %157, i32** %14, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %161, 1
  %163 = mul nsw i32 3, %162
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %163, %167
  %169 = load i32*, i32** %6, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32* %171, i32** %6, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  switch i32 %176, label %335 [
    i32 129, label %177
    i32 128, label %256
    i32 130, label %256
  ]

177:                                              ; preds = %150
  store i32 0, i32* %13, align 4
  br label %178

178:                                              ; preds = %237, %177
  %179 = load i32, i32* %13, align 4
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp ult i32 %179, %183
  br i1 %184, label %185, label %255

185:                                              ; preds = %178
  store i32 0, i32* %12, align 4
  br label %186

186:                                              ; preds = %233, %185
  %187 = load i32, i32* %12, align 4
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp ult i32 %187, %191
  br i1 %192, label %193, label %236

193:                                              ; preds = %186
  %194 = load i32*, i32** %14, align 8
  %195 = load i32, i32* %12, align 4
  %196 = mul i32 4, %195
  %197 = add i32 %196, 0
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %194, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %6, align 8
  %202 = load i32, i32* %12, align 4
  %203 = mul i32 3, %202
  %204 = add i32 %203, 0
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %201, i64 %205
  store i32 %200, i32* %206, align 4
  %207 = load i32*, i32** %14, align 8
  %208 = load i32, i32* %12, align 4
  %209 = mul i32 4, %208
  %210 = add i32 %209, 1
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %207, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %6, align 8
  %215 = load i32, i32* %12, align 4
  %216 = mul i32 3, %215
  %217 = add i32 %216, 1
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %214, i64 %218
  store i32 %213, i32* %219, align 4
  %220 = load i32*, i32** %14, align 8
  %221 = load i32, i32* %12, align 4
  %222 = mul i32 4, %221
  %223 = add i32 %222, 2
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %220, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %6, align 8
  %228 = load i32, i32* %12, align 4
  %229 = mul i32 3, %228
  %230 = add i32 %229, 2
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %227, i64 %231
  store i32 %226, i32* %232, align 4
  br label %233

233:                                              ; preds = %193
  %234 = load i32, i32* %12, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %12, align 4
  br label %186

236:                                              ; preds = %186
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %13, align 4
  %239 = add i32 %238, 1
  store i32 %239, i32* %13, align 4
  %240 = load %struct.vk_texture*, %struct.vk_texture** %8, align 8
  %241 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load i32*, i32** %14, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32* %245, i32** %14, align 8
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = mul nsw i32 3, %249
  %251 = load i32*, i32** %6, align 8
  %252 = sext i32 %250 to i64
  %253 = sub i64 0, %252
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32* %254, i32** %6, align 8
  br label %178

255:                                              ; preds = %178
  br label %337

256:                                              ; preds = %150, %150
  store i32 0, i32* %13, align 4
  br label %257

257:                                              ; preds = %316, %256
  %258 = load i32, i32* %13, align 4
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = icmp ult i32 %258, %262
  br i1 %263, label %264, label %334

264:                                              ; preds = %257
  store i32 0, i32* %12, align 4
  br label %265

265:                                              ; preds = %312, %264
  %266 = load i32, i32* %12, align 4
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = icmp ult i32 %266, %270
  br i1 %271, label %272, label %315

272:                                              ; preds = %265
  %273 = load i32*, i32** %14, align 8
  %274 = load i32, i32* %12, align 4
  %275 = mul i32 4, %274
  %276 = add i32 %275, 0
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %273, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32*, i32** %6, align 8
  %281 = load i32, i32* %12, align 4
  %282 = mul i32 3, %281
  %283 = add i32 %282, 2
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %280, i64 %284
  store i32 %279, i32* %285, align 4
  %286 = load i32*, i32** %14, align 8
  %287 = load i32, i32* %12, align 4
  %288 = mul i32 4, %287
  %289 = add i32 %288, 1
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %286, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32*, i32** %6, align 8
  %294 = load i32, i32* %12, align 4
  %295 = mul i32 3, %294
  %296 = add i32 %295, 1
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %293, i64 %297
  store i32 %292, i32* %298, align 4
  %299 = load i32*, i32** %14, align 8
  %300 = load i32, i32* %12, align 4
  %301 = mul i32 4, %300
  %302 = add i32 %301, 2
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %299, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32*, i32** %6, align 8
  %307 = load i32, i32* %12, align 4
  %308 = mul i32 3, %307
  %309 = add i32 %308, 0
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %306, i64 %310
  store i32 %305, i32* %311, align 4
  br label %312

312:                                              ; preds = %272
  %313 = load i32, i32* %12, align 4
  %314 = add i32 %313, 1
  store i32 %314, i32* %12, align 4
  br label %265

315:                                              ; preds = %265
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %13, align 4
  %318 = add i32 %317, 1
  store i32 %318, i32* %13, align 4
  %319 = load %struct.vk_texture*, %struct.vk_texture** %8, align 8
  %320 = getelementptr inbounds %struct.vk_texture, %struct.vk_texture* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = load i32*, i32** %14, align 8
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  store i32* %324, i32** %14, align 8
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = mul nsw i32 3, %328
  %330 = load i32*, i32** %6, align 8
  %331 = sext i32 %329 to i64
  %332 = sub i64 0, %331
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  store i32* %333, i32** %6, align 8
  br label %257

334:                                              ; preds = %257
  br label %337

335:                                              ; preds = %150
  %336 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %337

337:                                              ; preds = %335, %334, %255
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.vk_texture*, %struct.vk_texture** %8, align 8
  %344 = call i32 @vulkan_destroy_texture(i32 %342, %struct.vk_texture* %343)
  br label %345

345:                                              ; preds = %337, %122
  store i32 1, i32* %4, align 4
  br label %346

346:                                              ; preds = %345, %61, %19
  %347 = load i32, i32* %4, align 4
  ret i32 %347
}

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @vkMapMemory(i32, i64, i32, i32, i32, i8**) #1

declare dso_local i32 @vulkan_sync_texture_to_cpu(%struct.TYPE_9__*, %struct.vk_texture*) #1

declare dso_local i32 @scaler_ctx_scale_direct(%struct.scaler_ctx*, i32*, i32*) #1

declare dso_local i32 @vkUnmapMemory(i32, i64) #1

declare dso_local i32 @video_driver_cached_frame(...) #1

declare dso_local i32 @vkQueueWaitIdle(i32) #1

declare dso_local i32 @vulkan_map_persistent_texture(i32, %struct.vk_texture*) #1

declare dso_local i32 @vulkan_destroy_texture(i32, %struct.vk_texture*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
