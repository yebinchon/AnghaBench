; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vulkan_raster_font.c_vulkan_raster_font_render_message.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vulkan_raster_font.c_vulkan_raster_font_render_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { float }
%struct.TYPE_7__ = type { i64 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8*, float, float*, float, float, i32)* @vulkan_raster_font_render_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulkan_raster_font_render_message(%struct.TYPE_10__* %0, i8* %1, float %2, float* %3, float %4, float %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i8* %1, i8** %9, align 8
  store float %2, float* %10, align 4
  store float* %3, float** %11, align 8
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %7
  %23 = load i8*, i8** %9, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %22, %7
  br label %139

32:                                               ; preds = %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64 (i32)*, i64 (i32)** %36, align 8
  %38 = icmp ne i64 (i32)* %37, null
  br i1 %38, label %56, label %39

39:                                               ; preds = %32
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = icmp ne %struct.TYPE_9__* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = load float, float* %10, align 4
  %50 = load float*, float** %11, align 8
  %51 = load float, float* %12, align 4
  %52 = load float, float* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @vulkan_raster_font_render_line(%struct.TYPE_10__* %45, i8* %46, i32 %48, float %49, float* %50, float %51, float %52, i32 %53)
  br label %55

55:                                               ; preds = %44, %39
  br label %139

56:                                               ; preds = %32
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64 (i32)*, i64 (i32)** %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 %61(i32 %64)
  %66 = sitofp i64 %65 to float
  %67 = load float, float* %10, align 4
  %68 = fmul float %66, %67
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load float, float* %73, align 4
  %75 = fdiv float %68, %74
  store float %75, float* %16, align 4
  br label %76

76:                                               ; preds = %138, %56
  %77 = load i8*, i8** %9, align 8
  %78 = call i8* @strchr(i8* %77, i8 signext 10)
  store i8* %78, i8** %17, align 8
  %79 = load i8*, i8** %17, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %115

81:                                               ; preds = %76
  %82 = load i8*, i8** %17, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %18, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = icmp ne %struct.TYPE_9__* %90, null
  br i1 %91, label %92, label %107

92:                                               ; preds = %81
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* %18, align 4
  %96 = load float, float* %10, align 4
  %97 = load float*, float** %11, align 8
  %98 = load float, float* %12, align 4
  %99 = load float, float* %13, align 4
  %100 = load i32, i32* %15, align 4
  %101 = sitofp i32 %100 to float
  %102 = load float, float* %16, align 4
  %103 = fmul float %101, %102
  %104 = fsub float %99, %103
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @vulkan_raster_font_render_line(%struct.TYPE_10__* %93, i8* %94, i32 %95, float %96, float* %97, float %98, float %104, i32 %105)
  br label %107

107:                                              ; preds = %92, %81
  %108 = load i32, i32* %18, align 4
  %109 = add i32 %108, 1
  %110 = load i8*, i8** %9, align 8
  %111 = zext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %9, align 8
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %138

115:                                              ; preds = %76
  %116 = load i8*, i8** %9, align 8
  %117 = call i32 @strlen(i8* %116)
  store i32 %117, i32* %19, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = icmp ne %struct.TYPE_9__* %120, null
  br i1 %121, label %122, label %137

122:                                              ; preds = %115
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = load i32, i32* %19, align 4
  %126 = load float, float* %10, align 4
  %127 = load float*, float** %11, align 8
  %128 = load float, float* %12, align 4
  %129 = load float, float* %13, align 4
  %130 = load i32, i32* %15, align 4
  %131 = sitofp i32 %130 to float
  %132 = load float, float* %16, align 4
  %133 = fmul float %131, %132
  %134 = fsub float %129, %133
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @vulkan_raster_font_render_line(%struct.TYPE_10__* %123, i8* %124, i32 %125, float %126, float* %127, float %128, float %134, i32 %135)
  br label %137

137:                                              ; preds = %122, %115
  br label %139

138:                                              ; preds = %107
  br label %76

139:                                              ; preds = %31, %55, %137
  ret void
}

declare dso_local i32 @vulkan_raster_font_render_line(%struct.TYPE_10__*, i8*, i32, float, float*, float, float, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
