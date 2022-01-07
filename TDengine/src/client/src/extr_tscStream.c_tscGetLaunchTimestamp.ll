; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscStream.c_tscGetLaunchTimestamp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscStream.c_tscGetLaunchTimestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, double }

@TSDB_TIME_PRECISION_MICRO = common dso_local global i64 0, align 8
@tsMaxStreamComputDelay = common dso_local global i64 0, align 8
@tsStreamCompStartDelay = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @tscGetLaunchTimestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tscGetLaunchTimestamp(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @taosGetTimestamp(i64 %12)
  %14 = sub nsw i64 %9, %13
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load double, double* %20, align 8
  %22 = fmul double %21, 1.000000e-01
  %23 = fptosi double %22 to i64
  store i64 %23, i64* %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TSDB_TIME_PRECISION_MICRO, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i64, i64* @tsMaxStreamComputDelay, align 8
  %31 = mul nsw i64 %30, 1000
  br label %34

32:                                               ; preds = %18
  %33 = load i64, i64* @tsMaxStreamComputDelay, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i64 [ %31, %29 ], [ %33, %32 ]
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %39, %34
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TSDB_TIME_PRECISION_MICRO, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i64, i64* @tsStreamCompStartDelay, align 8
  %49 = mul nsw i64 %48, 1000
  br label %52

50:                                               ; preds = %41
  %51 = load i64, i64* @tsStreamCompStartDelay, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i64 [ %49, %47 ], [ %51, %50 ]
  store i64 %53, i64* %6, align 8
  %54 = call i32 @time(i32* null)
  %55 = call i32 @srand(i32 %54)
  %56 = call i64 (...) @rand()
  %57 = load i64, i64* %4, align 8
  %58 = srem i64 %56, %57
  %59 = load i64, i64* %3, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %3, align 8
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %52
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64, %52
  %69 = load i64, i64* %3, align 8
  %70 = load i64, i64* %6, align 8
  %71 = srem i64 %69, %70
  %72 = load i64, i64* %6, align 8
  %73 = add nsw i64 %71, %72
  store i64 %73, i64* %3, align 8
  br label %74

74:                                               ; preds = %68, %64
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TSDB_TIME_PRECISION_MICRO, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i64, i64* %3, align 8
  %82 = sdiv i64 %81, 1000
  br label %85

83:                                               ; preds = %74
  %84 = load i64, i64* %3, align 8
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi i64 [ %82, %80 ], [ %84, %83 ]
  ret i64 %86
}

declare dso_local i64 @taosGetTimestamp(i64) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
