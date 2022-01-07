; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_test.c_CM_TransformedPointContents.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_test.c_CM_TransformedPointContents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BOX_MODEL_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CM_TransformedPointContents(i64* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = call i32 @VectorSubtract(i64* %14, i64* %15, i64* %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @BOX_MODEL_HANDLE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %4
  %22 = load i64*, i64** %8, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load i64*, i64** %8, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i64*, i64** %8, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %31, %26, %21
  %37 = load i64*, i64** %8, align 8
  %38 = load i64*, i64** %11, align 8
  %39 = load i64*, i64** %12, align 8
  %40 = load i64*, i64** %13, align 8
  %41 = call i32 @AngleVectors(i64* %37, i64* %38, i64* %39, i64* %40)
  %42 = load i64*, i64** %9, align 8
  %43 = load i64*, i64** %10, align 8
  %44 = call i32 @VectorCopy(i64* %42, i64* %43)
  %45 = load i64*, i64** %10, align 8
  %46 = load i64*, i64** %11, align 8
  %47 = call i64 @DotProduct(i64* %45, i64* %46)
  %48 = load i64*, i64** %9, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  store i64 %47, i64* %49, align 8
  %50 = load i64*, i64** %10, align 8
  %51 = load i64*, i64** %12, align 8
  %52 = call i64 @DotProduct(i64* %50, i64* %51)
  %53 = sub nsw i64 0, %52
  %54 = load i64*, i64** %9, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  store i64 %53, i64* %55, align 8
  %56 = load i64*, i64** %10, align 8
  %57 = load i64*, i64** %13, align 8
  %58 = call i64 @DotProduct(i64* %56, i64* %57)
  %59 = load i64*, i64** %9, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 2
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %36, %31, %4
  %62 = load i64*, i64** %9, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @CM_PointContents(i64* %62, i32 %63)
  ret i32 %64
}

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local i32 @AngleVectors(i64*, i64*, i64*, i64*) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i64 @DotProduct(i64*, i64*) #1

declare dso_local i32 @CM_PointContents(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
