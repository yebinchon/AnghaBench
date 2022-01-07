; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_init_static_resources.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vulkan.c_vulkan_init_static_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO = common dso_local global i32 0, align 4
@VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO = common dso_local global i32 0, align 4
@VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT = common dso_local global i32 0, align 4
@VK_FORMAT_B8G8R8A8_UNORM = common dso_local global i32 0, align 4
@VULKAN_TEXTURE_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @vulkan_init_static_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulkan_init_static_resources(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [16 x i32], align 16
  %5 = alloca %struct.TYPE_16__, align 4
  %6 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %8 = load i32, i32* @VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %12 = load i32, i32* @VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* @VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT, align 4
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %63

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = call i32 @vkCreatePipelineCache(i32 %25, %struct.TYPE_15__* %6, i32* null, i32* %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = call i32 @vkCreateCommandPool(i32 %40, %struct.TYPE_16__* %5, i32* null, i32* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %51, %20
  %45 = load i32, i32* %3, align 4
  %46 = icmp ult i32 %45, 16
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %49
  store i32 -1, i32* %50, align 4
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %44

54:                                               ; preds = %44
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %56 = load i32, i32* @VK_FORMAT_B8G8R8A8_UNORM, align 4
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %58 = load i32, i32* @VULKAN_TEXTURE_STATIC, align 4
  %59 = call i32 @vulkan_create_texture(%struct.TYPE_14__* %55, i32* null, i32 4, i32 4, i32 %56, i32* %57, i32* null, i32 %58)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  br label %63

63:                                               ; preds = %54, %19
  ret void
}

declare dso_local i32 @vkCreatePipelineCache(i32, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @vkCreateCommandPool(i32, %struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @vulkan_create_texture(%struct.TYPE_14__*, i32*, i32, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
