; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt__new_active.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt__new_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, i32, float, float, float, float, i64 }
%struct.TYPE_5__ = type { float, float, float, float, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, %struct.TYPE_5__*, i32, float, i8*)* @stbtt__new_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @stbtt__new_active(i32* %0, %struct.TYPE_5__* %1, i32 %2, float %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32 %2, i32* %9, align 4
  store float %3, float* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = call i64 @stbtt__hheap_alloc(i32* %14, i32 32, i8* %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %12, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load float, float* %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load float, float* %22, align 4
  %24 = fsub float %20, %23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load float, float* %26, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load float, float* %29, align 4
  %31 = fsub float %27, %30
  %32 = fdiv float %24, %31
  store float %32, float* %13, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %5
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %6, align 8
  br label %86

37:                                               ; preds = %5
  %38 = load float, float* %13, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store float %38, float* %40, align 8
  %41 = load float, float* %13, align 4
  %42 = fdiv float 1.000000e+00, %41
  %43 = fptosi float %42 to i32
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load float, float* %47, align 4
  %49 = load float, float* %13, align 4
  %50 = load float, float* %10, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load float, float* %52, align 4
  %54 = fsub float %50, %53
  %55 = fmul float %49, %54
  %56 = fadd float %48, %55
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store float %56, float* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sitofp i32 %59 to float
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load float, float* %62, align 8
  %64 = fsub float %63, %60
  store float %64, float* %62, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, float 1.000000e+00, float -1.000000e+00
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  store float %70, float* %72, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load float, float* %74, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  store float %75, float* %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load float, float* %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  store float %80, float* %82, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 6
  store i64 0, i64* %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %85, %struct.TYPE_6__** %6, align 8
  br label %86

86:                                               ; preds = %37, %35
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %87
}

declare dso_local i64 @stbtt__hheap_alloc(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
