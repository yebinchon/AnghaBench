; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_acquire_next_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_acquire_next_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64*, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@VK_STRUCTURE_TYPE_FENCE_CREATE_INFO = common dso_local global i32 0, align 4
@VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO = common dso_local global i32 0, align 4
@VK_NULL_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"[Vulkan]: Failed to create new swapchain.\0A\00", align 1
@UINT64_MAX = common dso_local global i32 0, align 4
@VK_SUCCESS = common dso_local global i64 0, align 8
@VK_NOT_READY = common dso_local global i64 0, align 8
@VK_TIMEOUT = common dso_local global i64 0, align 8
@VK_ERROR_OUT_OF_DATE_KHR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [93 x i8] c"[Vulkan]: Swapchain is out of date, trying to create new one. Have tried multiple times ...\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"[Vulkan]: Swapchain is out of date, trying to create new one.\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"[Vulkan]: Failed to acquire from swapchain (err = %d).\0A\00", align 1
@VK_ERROR_SURFACE_LOST_KHR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"[Vulkan]: Got VK_ERROR_SURFACE_LOST_KHR.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vulkan_acquire_next_image(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__, align 4
  %7 = alloca %struct.TYPE_14__, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %10 = load i32, i32* @VK_STRUCTURE_TYPE_FENCE_CREATE_INFO, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %12 = load i32, i32* @VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO, align 4
  store i32 %12, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %166, %1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VK_NULL_HANDLE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %13
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @vulkan_create_swapchain(%struct.TYPE_13__* %20, i32 %24, i32 %28, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %19
  %36 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %223

37:                                               ; preds = %19
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VK_NULL_HANDLE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %48 = call i32 @vulkan_acquire_clear_fences(%struct.TYPE_13__* %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %50 = call i32 @vulkan_acquire_wait_fences(%struct.TYPE_13__* %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  br label %223

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %13
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @retro_assert(i32 %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %55
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = call i64 @vulkan_emulated_mailbox_acquire_next_image(i32* %70, i32* %73)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* @VK_NULL_HANDLE, align 8
  store i64 %75, i64* %5, align 8
  br label %96

76:                                               ; preds = %55
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @vkCreateFence(i32 %80, %struct.TYPE_15__* %6, i32* null, i64* %5)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @UINT64_MAX, align 4
  %90 = load i64, i64* @VK_NULL_HANDLE, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = call i64 @vkAcquireNextImageKHR(i32 %85, i64 %88, i32 %89, i64 %90, i64 %91, i32* %94)
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %76, %68
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* @VK_SUCCESS, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = load i64, i64* %5, align 8
  %102 = load i64, i64* @VK_NULL_HANDLE, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @UINT64_MAX, align 4
  %110 = call i32 @vkWaitForFences(i32 %108, i32 1, i64* %5, i32 1, i32 %109)
  br label %111

111:                                              ; preds = %104, %100
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  store i32 1, i32* %114, align 8
  br label %119

115:                                              ; preds = %96
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  store i32 0, i32* %118, align 8
  br label %119

119:                                              ; preds = %115, %111
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* @VK_NULL_HANDLE, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @vkDestroyFence(i32 %127, i64 %128, i32* null)
  br label %130

130:                                              ; preds = %123, %119
  %131 = load i64, i64* %4, align 8
  %132 = load i64, i64* @VK_NOT_READY, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i64, i64* %4, align 8
  %136 = load i64, i64* @VK_TIMEOUT, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %152

138:                                              ; preds = %134, %130
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = srem i32 %143, %147
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 8
  br label %192

152:                                              ; preds = %134
  %153 = load i64, i64* %4, align 8
  %154 = load i64, i64* @VK_ERROR_OUT_OF_DATE_KHR, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %152
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %158 = call i32 @vulkan_destroy_swapchain(%struct.TYPE_13__* %157)
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0))
  %163 = call i32 @retro_sleep(i32 10)
  br label %166

164:                                              ; preds = %156
  %165 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %161
  store i32 1, i32* %8, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %168 = call i32 @vulkan_acquire_clear_fences(%struct.TYPE_13__* %167)
  br label %13

169:                                              ; preds = %152
  %170 = load i64, i64* %4, align 8
  %171 = load i64, i64* @VK_SUCCESS, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %169
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %175 = call i32 @vulkan_destroy_swapchain(%struct.TYPE_13__* %174)
  %176 = load i64, i64* %4, align 8
  %177 = trunc i64 %176 to i32
  %178 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %177)
  %179 = load i64, i64* %4, align 8
  %180 = load i64, i64* @VK_ERROR_SURFACE_LOST_KHR, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %173
  %183 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %173
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  store i32 1, i32* %187, align 4
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %189 = call i32 @vulkan_acquire_clear_fences(%struct.TYPE_13__* %188)
  br label %223

190:                                              ; preds = %169
  br label %191

191:                                              ; preds = %190
  br label %192

192:                                              ; preds = %191, %138
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  store i32 %196, i32* %3, align 4
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 4
  %200 = load i64*, i64** %199, align 8
  %201 = load i32, i32* %3, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @VK_NULL_HANDLE, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %220

207:                                              ; preds = %192
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 4
  %215 = load i64*, i64** %214, align 8
  %216 = load i32, i32* %3, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  %219 = call i32 @vkCreateSemaphore(i32 %211, %struct.TYPE_14__* %7, i32* null, i64* %218)
  br label %220

220:                                              ; preds = %207, %192
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %222 = call i32 @vulkan_acquire_wait_fences(%struct.TYPE_13__* %221)
  br label %223

223:                                              ; preds = %220, %184, %43, %35
  ret void
}

declare dso_local i32 @vulkan_create_swapchain(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, ...) #1

declare dso_local i32 @vulkan_acquire_clear_fences(%struct.TYPE_13__*) #1

declare dso_local i32 @vulkan_acquire_wait_fences(%struct.TYPE_13__*) #1

declare dso_local i32 @retro_assert(i32) #1

declare dso_local i64 @vulkan_emulated_mailbox_acquire_next_image(i32*, i32*) #1

declare dso_local i32 @vkCreateFence(i32, %struct.TYPE_15__*, i32*, i64*) #1

declare dso_local i64 @vkAcquireNextImageKHR(i32, i64, i32, i64, i64, i32*) #1

declare dso_local i32 @vkWaitForFences(i32, i32, i64*, i32, i32) #1

declare dso_local i32 @vkDestroyFence(i32, i64, i32*) #1

declare dso_local i32 @vulkan_destroy_swapchain(%struct.TYPE_13__*) #1

declare dso_local i32 @retro_sleep(i32) #1

declare dso_local i32 @vkCreateSemaphore(i32, %struct.TYPE_14__*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
