; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_context_init_gpu.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_context_init_gpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i32 }
%union.string_list_elem_attr = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@VK_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"[Vulkan]: Failed to enumerate physical devices.\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"[Vulkan]: Failed to enumerate Vulkan physical device.\0A\00", align 1
@vulkan_gpu_list = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"[Vulkan]: Found GPU at index %d: %s\0A\00", align 1
@GFX_CTX_VULKAN_API = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"[Vulkan]: Using GPU index %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"[Vulkan]: Invalid GPU index %d, using first device found.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @vulkan_context_init_gpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vulkan_context_init_gpu(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %union.string_list_elem_attr, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 0, i32* %5, align 4
  store i8** null, i8*** %6, align 8
  %10 = bitcast %union.string_list_elem_attr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = call %struct.TYPE_11__* (...) @config_get_ptr()
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %8, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @vkEnumeratePhysicalDevices(i32 %15, i32* %5, i8** null)
  %17 = load i64, i64* @VK_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %130

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @calloc(i32 %22, i32 8)
  %24 = inttoptr i64 %23 to i8**
  store i8** %24, i8*** %6, align 8
  %25 = load i8**, i8*** %6, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %130

29:                                               ; preds = %21
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i8**, i8*** %6, align 8
  %35 = call i64 @vkEnumeratePhysicalDevices(i32 %33, i32* %5, i8** %34)
  %36 = load i64, i64* @VK_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %40 = load i8**, i8*** %6, align 8
  %41 = call i32 @free(i8** %40)
  store i32 0, i32* %2, align 4
  br label %130

42:                                               ; preds = %29
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i8**, i8*** %6, align 8
  %48 = call i32 @free(i8** %47)
  store i32 0, i32* %2, align 4
  br label %130

49:                                               ; preds = %42
  %50 = load i64, i64* @vulkan_gpu_list, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i64, i64* @vulkan_gpu_list, align 8
  %54 = call i32 @string_list_free(i64 %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = call i64 (...) @string_list_new()
  store i64 %56, i64* @vulkan_gpu_list, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %78, %55
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %57
  %62 = load i8**, i8*** %6, align 8
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @vkGetPhysicalDeviceProperties(i8* %66, %struct.TYPE_13__* %9)
  %68 = load i32, i32* %4, align 4
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %70)
  %72 = load i64, i64* @vulkan_gpu_list, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %7, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @string_list_append(i64 %72, i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %61
  %79 = load i32, i32* %4, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %57

81:                                               ; preds = %57
  %82 = load i32, i32* @GFX_CTX_VULKAN_API, align 4
  %83 = load i64, i64* @vulkan_gpu_list, align 8
  %84 = call i32 @video_driver_set_gpu_api_devices(i32 %82, i64 %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sle i32 0, %88
  br i1 %89, label %90, label %114

90:                                               ; preds = %81
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %90
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load i8**, i8*** %6, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %103, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  store i8* %110, i8** %113, align 8
  br label %127

114:                                              ; preds = %90, %81
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i64 %119)
  %121 = load i8**, i8*** %6, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 0
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  store i8* %123, i8** %126, align 8
  br label %127

127:                                              ; preds = %114, %97
  %128 = load i8**, i8*** %6, align 8
  %129 = call i32 @free(i8** %128)
  store i32 1, i32* %2, align 4
  br label %130

130:                                              ; preds = %127, %45, %38, %27, %19
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_11__* @config_get_ptr(...) #2

declare dso_local i64 @vkEnumeratePhysicalDevices(i32, i32*, i8**) #2

declare dso_local i32 @RARCH_ERR(i8*) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @free(i8**) #2

declare dso_local i32 @string_list_free(i64) #2

declare dso_local i64 @string_list_new(...) #2

declare dso_local i32 @vkGetPhysicalDeviceProperties(i8*, %struct.TYPE_13__*) #2

declare dso_local i32 @RARCH_LOG(i8*, i32, ...) #2

declare dso_local i32 @string_list_append(i64, i32, i32) #2

declare dso_local i32 @video_driver_set_gpu_api_devices(i32, i64) #2

declare dso_local i32 @RARCH_WARN(i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
