; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_update_display_mode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_update_display_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.vulkan_display_surface_info = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_7__*, %struct.vulkan_display_surface_info*)* @vulkan_update_display_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vulkan_update_display_mode(i32* %0, i32* %1, %struct.TYPE_7__* %2, %struct.vulkan_display_surface_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.vulkan_display_surface_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store %struct.vulkan_display_surface_info* %3, %struct.vulkan_display_surface_info** %9, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.vulkan_display_surface_info*, %struct.vulkan_display_surface_info** %9, align 8
  %30 = getelementptr inbounds %struct.vulkan_display_surface_info, %struct.vulkan_display_surface_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %4
  %34 = load %struct.vulkan_display_surface_info*, %struct.vulkan_display_surface_info** %9, align 8
  %35 = getelementptr inbounds %struct.vulkan_display_surface_info, %struct.vulkan_display_surface_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %33, %4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = mul i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = mul i32 %44, %46
  %48 = icmp ugt i32 %42, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  store i32 1, i32* %5, align 4
  br label %105

54:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %105

55:                                               ; preds = %33
  %56 = load %struct.vulkan_display_surface_info*, %struct.vulkan_display_surface_info** %9, align 8
  %57 = getelementptr inbounds %struct.vulkan_display_surface_info, %struct.vulkan_display_surface_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %13, align 4
  %62 = load %struct.vulkan_display_surface_info*, %struct.vulkan_display_surface_info** %9, align 8
  %63 = getelementptr inbounds %struct.vulkan_display_surface_info, %struct.vulkan_display_surface_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %14, align 4
  %68 = load %struct.vulkan_display_surface_info*, %struct.vulkan_display_surface_info** %9, align 8
  %69 = getelementptr inbounds %struct.vulkan_display_surface_info, %struct.vulkan_display_surface_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %71, %73
  store i32 %74, i32* %15, align 4
  %75 = load %struct.vulkan_display_surface_info*, %struct.vulkan_display_surface_info** %9, align 8
  %76 = getelementptr inbounds %struct.vulkan_display_surface_info, %struct.vulkan_display_surface_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %78, %80
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %84, %87
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = mul nsw i32 %92, %93
  %95 = add nsw i32 %91, %94
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %18, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %55
  %100 = load i32, i32* %10, align 4
  %101 = load i32*, i32** %6, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32*, i32** %7, align 8
  store i32 %102, i32* %103, align 4
  store i32 1, i32* %5, align 4
  br label %105

104:                                              ; preds = %55
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %99, %54, %49
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
