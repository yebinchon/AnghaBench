; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc_psy.c_search_for_change_points.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc_psy.c_search_for_change_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, float, i32, i32, i32, i32)* @search_for_change_points to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_for_change_points(%struct.TYPE_5__* %0, float %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store float %1, float* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store float 0.000000e+00, float* %14, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = sub nsw i32 %15, %16
  %18 = load i32, i32* %11, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  br label %82

21:                                               ; preds = %6
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %45, %21
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sitofp i64 %36 to float
  %38 = load float, float* %14, align 4
  %39 = fadd float %38, %37
  store float %39, float* %14, align 4
  %40 = load float, float* %14, align 4
  %41 = load float, float* %8, align 4
  %42 = fcmp ogt float %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  br label %48

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %23

48:                                               ; preds = %43, %23
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %82

53:                                               ; preds = %48
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = load float, float* %8, align 4
  %56 = fdiv float %55, 2.000000e+00
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 0
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  call void @search_for_change_points(%struct.TYPE_5__* %54, float %56, i32 %57, i32 %59, i32 %60, i32 %62)
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  store i32 %63, i32* %72, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %74 = load float, float* %8, align 4
  %75 = fdiv float %74, 2.000000e+00
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  call void @search_for_change_points(%struct.TYPE_5__* %73, float %75, i32 %77, i32 %78, i32 %79, i32 %81)
  br label %82

82:                                               ; preds = %53, %52, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
