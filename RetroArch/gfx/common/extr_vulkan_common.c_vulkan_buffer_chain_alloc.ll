; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_buffer_chain_alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_buffer_chain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vulkan_context = type { i32 }
%struct.vk_buffer_chain = type { i64, %struct.TYPE_2__*, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.vk_buffer_range = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vulkan_buffer_chain_alloc(%struct.vulkan_context* %0, %struct.vk_buffer_chain* %1, i64 %2, %struct.vk_buffer_range* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vulkan_context*, align 8
  %7 = alloca %struct.vk_buffer_chain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vk_buffer_range*, align 8
  store %struct.vulkan_context* %0, %struct.vulkan_context** %6, align 8
  store %struct.vk_buffer_chain* %1, %struct.vk_buffer_chain** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.vk_buffer_range* %3, %struct.vk_buffer_range** %9, align 8
  %10 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %11 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %39, label %14

14:                                               ; preds = %4
  %15 = load %struct.vulkan_context*, %struct.vulkan_context** %6, align 8
  %16 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %17 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %20 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @vulkan_buffer_chain_alloc_node(%struct.vulkan_context* %15, i64 %18, i32 %21)
  %23 = bitcast i8* %22 to %struct.TYPE_2__*
  %24 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %25 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %24, i32 0, i32 4
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %25, align 8
  %26 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %27 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %100

31:                                               ; preds = %14
  %32 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %33 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %32, i32 0, i32 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %36 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %35, i32 0, i32 1
  store %struct.TYPE_2__* %34, %struct.TYPE_2__** %36, align 8
  %37 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %38 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %31, %4
  %40 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.vk_buffer_range*, %struct.vk_buffer_range** %9, align 8
  %43 = call i64 @vulkan_buffer_chain_suballoc(%struct.vk_buffer_chain* %40, i64 %41, %struct.vk_buffer_range* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  br label %100

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %63, %46
  %48 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %49 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %56 = call i32 @vulkan_buffer_chain_step(%struct.vk_buffer_chain* %55)
  %57 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.vk_buffer_range*, %struct.vk_buffer_range** %9, align 8
  %60 = call i64 @vulkan_buffer_chain_suballoc(%struct.vk_buffer_chain* %57, i64 %58, %struct.vk_buffer_range* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %100

63:                                               ; preds = %54
  br label %47

64:                                               ; preds = %47
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %67 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %72 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %70, %64
  %75 = load %struct.vulkan_context*, %struct.vulkan_context** %6, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %78 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @vulkan_buffer_chain_alloc_node(%struct.vulkan_context* %75, i64 %76, i32 %79)
  %81 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %82 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i8* %80, i8** %84, align 8
  %85 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %86 = getelementptr inbounds %struct.vk_buffer_chain, %struct.vk_buffer_chain* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %100

92:                                               ; preds = %74
  %93 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %94 = call i32 @vulkan_buffer_chain_step(%struct.vk_buffer_chain* %93)
  %95 = load %struct.vk_buffer_chain*, %struct.vk_buffer_chain** %7, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.vk_buffer_range*, %struct.vk_buffer_range** %9, align 8
  %98 = call i64 @vulkan_buffer_chain_suballoc(%struct.vk_buffer_chain* %95, i64 %96, %struct.vk_buffer_range* %97)
  %99 = call i32 @retro_assert(i64 %98)
  store i32 1, i32* %5, align 4
  br label %100

100:                                              ; preds = %92, %91, %62, %45, %30
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i8* @vulkan_buffer_chain_alloc_node(%struct.vulkan_context*, i64, i32) #1

declare dso_local i64 @vulkan_buffer_chain_suballoc(%struct.vk_buffer_chain*, i64, %struct.vk_buffer_range*) #1

declare dso_local i32 @vulkan_buffer_chain_step(%struct.vk_buffer_chain*) #1

declare dso_local i32 @retro_assert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
