; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_rgbgr_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_rgbgr_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgbgr_image(i64 %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = bitcast %struct.TYPE_3__* %3 to { i64, float* }*
  %7 = getelementptr inbounds { i64, float* }, { i64, float* }* %6, i32 0, i32 0
  store i64 %0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, float* }, { i64, float* }* %6, i32 0, i32 1
  store float* %1, float** %8, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %55, %2
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %12, %14
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %19 = load float*, float** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %19, i64 %21
  %23 = load float, float* %22, align 4
  store float %23, float* %5, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %25 = load float*, float** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %28, %30
  %32 = mul nsw i32 %31, 2
  %33 = add nsw i32 %26, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %25, i64 %34
  %36 = load float, float* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %38 = load float*, float** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  store float %36, float* %41, align 4
  %42 = load float, float* %5, align 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %44 = load float*, float** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %47, %49
  %51 = mul nsw i32 %50, 2
  %52 = add nsw i32 %45, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %44, i64 %53
  store float %42, float* %54, align 4
  br label %55

55:                                               ; preds = %17
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %9

58:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
