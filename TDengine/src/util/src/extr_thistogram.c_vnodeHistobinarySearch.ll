; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_thistogram.c_vnodeHistobinarySearch.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_thistogram.c_vnodeHistobinarySearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vnodeHistobinarySearch(%struct.TYPE_3__* %0, i64 %1, double %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store double %2, double* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = sub nsw i64 %12, 1
  store i64 %13, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %48, %3
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = sub nsw i64 %19, %20
  %22 = sdiv i64 %21, 2
  %23 = load i64, i64* %9, align 8
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* %10, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = load double, double* %7, align 8
  %31 = fcmp oeq double %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %4, align 8
  br label %64

34:                                               ; preds = %18
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = load double, double* %7, align 8
  %41 = fcmp olt double %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i64, i64* %10, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %9, align 8
  br label %48

45:                                               ; preds = %34
  %46 = load i64, i64* %10, align 8
  %47 = sub nsw i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %45, %42
  br label %14

49:                                               ; preds = %14
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* %9, align 8
  br label %57

55:                                               ; preds = %49
  %56 = load i64, i64* %8, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i64 [ %54, %53 ], [ %56, %55 ]
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i64 0, i64* %4, align 8
  br label %64

62:                                               ; preds = %57
  %63 = load i64, i64* %11, align 8
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %62, %61, %32
  %65 = load i64, i64* %4, align 8
  ret i64 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
