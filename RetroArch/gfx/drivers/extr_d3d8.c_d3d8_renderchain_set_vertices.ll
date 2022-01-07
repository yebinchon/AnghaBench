; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_renderchain_set_vertices.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_renderchain_set_vertices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, float, float, i32 }
%struct.TYPE_6__ = type { float, float, float, float, float, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32, i32, i32, i32)* @d3d8_renderchain_set_vertices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3d8_renderchain_set_vertices(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x %struct.TYPE_6__], align 16
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = call i32 @video_driver_get_size(i32* %13, i32* %14)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %6
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %133

31:                                               ; preds = %25, %6
  store i8* null, i8** %18, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = uitofp i32 %38 to float
  store float %39, float* %16, align 4
  %40 = load i32, i32* %11, align 4
  %41 = uitofp i32 %40 to float
  store float %41, float* %17, align 4
  %42 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store float 0.000000e+00, float* %43, align 16
  %44 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store float 1.000000e+00, float* %45, align 4
  %46 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store float 1.000000e+00, float* %47, align 8
  %48 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store float 1.000000e+00, float* %49, align 8
  %50 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store float 1.000000e+00, float* %51, align 4
  %52 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  store float 1.000000e+00, float* %53, align 8
  %54 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store float 0.000000e+00, float* %55, align 16
  %56 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store float 0.000000e+00, float* %57, align 4
  %58 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store float 1.000000e+00, float* %59, align 8
  %60 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 3
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store float 1.000000e+00, float* %61, align 8
  %62 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 3
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store float 0.000000e+00, float* %63, align 4
  %64 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 3
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store float 1.000000e+00, float* %65, align 8
  %66 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  store float 0.000000e+00, float* %67, align 4
  %68 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  store float 0.000000e+00, float* %69, align 16
  %70 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  store float 0.000000e+00, float* %71, align 8
  %72 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store float 0.000000e+00, float* %73, align 4
  %74 = load float, float* %16, align 4
  %75 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  store float %74, float* %76, align 4
  %77 = load float, float* %17, align 4
  %78 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  store float %77, float* %79, align 16
  %80 = load float, float* %16, align 4
  %81 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 3
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  store float %80, float* %82, align 4
  %83 = load float, float* %17, align 4
  %84 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 3
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  store float %83, float* %85, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load float, float* %87, align 4
  %89 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load float, float* %90, align 4
  %92 = fdiv float %91, %88
  store float %92, float* %90, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  %95 = load float, float* %94, align 4
  %96 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = load float, float* %97, align 16
  %99 = fdiv float %98, %95
  store float %99, float* %97, align 16
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load float, float* %101, align 4
  %103 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 3
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = load float, float* %104, align 4
  %106 = fdiv float %105, %102
  store float %106, float* %104, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  %109 = load float, float* %108, align 4
  %110 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 3
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 4
  %112 = load float, float* %111, align 8
  %113 = fdiv float %112, %109
  store float %113, float* %111, align 8
  %114 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 5
  store i32 -1, i32* %115, align 4
  %116 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 5
  store i32 -1, i32* %117, align 4
  %118 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 5
  store i32 -1, i32* %119, align 4
  %120 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 3
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 5
  store i32 -1, i32* %121, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @d3d8_vertex_buffer_lock(i32 %124)
  store i8* %125, i8** %18, align 8
  %126 = load i8*, i8** %18, align 8
  %127 = getelementptr inbounds [4 x %struct.TYPE_6__], [4 x %struct.TYPE_6__]* %15, i64 0, i64 0
  %128 = call i32 @memcpy(i8* %126, %struct.TYPE_6__* %127, i32 96)
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @d3d8_vertex_buffer_unlock(i32 %131)
  br label %133

133:                                              ; preds = %31, %25
  ret void
}

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i8* @d3d8_vertex_buffer_lock(i32) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @d3d8_vertex_buffer_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
