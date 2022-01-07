; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_draw_bbox.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_draw_bbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_bbox(i64 %0, i64 %1, i64 %2, i32 %3, float %4, float %5, float %6) #0 {
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = bitcast %struct.TYPE_6__* %8 to i64*
  store i64 %0, i64* %19, align 4
  %20 = bitcast %struct.TYPE_7__* %9 to { i64, i64 }*
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  store i64 %1, i64* %21, align 4
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  store i64 %2, i64* %22, align 4
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  store float %6, float* %13, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 2
  %28 = sub nsw i32 %24, %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %28, %30
  store i32 %31, i32* %14, align 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 2
  %37 = add nsw i32 %33, %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %37, %39
  store i32 %40, i32* %15, align 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 2
  %46 = sub nsw i32 %42, %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %46, %48
  store i32 %49, i32* %16, align 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, 2
  %55 = add nsw i32 %51, %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %55, %57
  store i32 %58, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %59

59:                                               ; preds = %82, %7
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %59
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %18, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %18, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %18, align 4
  %72 = sub nsw i32 %70, %71
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %18, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load float, float* %11, align 4
  %77 = load float, float* %12, align 4
  %78 = load float, float* %13, align 4
  %79 = bitcast %struct.TYPE_6__* %8 to i64*
  %80 = load i64, i64* %79, align 4
  %81 = call i32 @draw_box(i64 %80, i32 %66, i32 %69, i32 %72, i32 %75, float %76, float %77, float %78)
  br label %82

82:                                               ; preds = %63
  %83 = load i32, i32* %18, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %18, align 4
  br label %59

85:                                               ; preds = %59
  ret void
}

declare dso_local i32 @draw_box(i64, i32, i32, i32, i32, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
