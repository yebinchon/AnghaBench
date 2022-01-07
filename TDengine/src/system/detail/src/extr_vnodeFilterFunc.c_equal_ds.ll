; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeFilterFunc.c_equal_ds.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeFilterFunc.c_equal_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { float }

@FLT_EPSILON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @equal_ds(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to float*
  %10 = load float, float* %9, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to float*
  %13 = load float, float* %12, align 4
  %14 = fcmp oeq float %10, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to float*
  %18 = load float, float* %17, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load float, float* %21, align 4
  %23 = fsub float %18, %22
  %24 = call i64 @fabs(float %23)
  %25 = load i64, i64* @FLT_EPSILON, align 8
  %26 = icmp sle i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  br label %58

28:                                               ; preds = %3
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i8* %29 to float*
  %31 = load float, float* %30, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = bitcast i8* %32 to float*
  %34 = load float, float* %33, align 4
  %35 = fcmp olt float %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to float*
  %40 = load float, float* %39, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load float, float* %43, align 4
  %45 = fcmp ole float %40, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %28
  %47 = load i8*, i8** %7, align 8
  %48 = bitcast i8* %47 to float*
  %49 = load float, float* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load float, float* %52, align 4
  %54 = fcmp oge float %49, %53
  br label %55

55:                                               ; preds = %46, %28
  %56 = phi i1 [ false, %28 ], [ %54, %46 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @fabs(float) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
