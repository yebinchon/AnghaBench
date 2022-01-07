; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeSystem.c_dnodeCleanUpSystem.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeSystem.c_dnodeCleanUpSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 (...)*, i32 (...)* }

@tsDnodeStopping = common dso_local global i32 0, align 4
@tsStatusTimer = common dso_local global i32* null, align 8
@TSDB_MOD_MAX = common dso_local global i32 0, align 4
@tsModule = common dso_local global %struct.TYPE_2__* null, align 8
@TSDB_MOD_MGMT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dnodeCleanUpSystem() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @tsDnodeStopping, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %92

5:                                                ; preds = %0
  store i32 1, i32* @tsDnodeStopping, align 4
  %6 = load i32*, i32** @tsStatusTimer, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = call i32 @taosTmrStopA(i32** @tsStatusTimer)
  store i32* null, i32** @tsStatusTimer, align 8
  br label %10

10:                                               ; preds = %8, %5
  store i32 1, i32* %1, align 4
  br label %11

11:                                               ; preds = %64, %10
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @TSDB_MOD_MAX, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %67

15:                                               ; preds = %11
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %15
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32 (...)*, i32 (...)** %28, align 8
  %30 = icmp ne i32 (...)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32 (...)*, i32 (...)** %36, align 8
  %38 = call i32 (...) %37()
  br label %39

39:                                               ; preds = %31, %23, %15
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %39
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32 (...)*, i32 (...)** %52, align 8
  %54 = icmp ne i32 (...)* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32 (...)*, i32 (...)** %60, align 8
  %62 = call i32 (...) %61()
  br label %63

63:                                               ; preds = %55, %47, %39
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %1, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %1, align 4
  br label %11

67:                                               ; preds = %11
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %69 = load i64, i64* @TSDB_MOD_MGMT, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %67
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %76 = load i64, i64* @TSDB_MOD_MGMT, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32 (...)*, i32 (...)** %78, align 8
  %80 = icmp ne i32 (...)* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %83 = load i64, i64* @TSDB_MOD_MGMT, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32 (...)*, i32 (...)** %85, align 8
  %87 = call i32 (...) %86()
  br label %88

88:                                               ; preds = %81, %74, %67
  %89 = call i32 (...) @vnodeCleanUpVnodes()
  %90 = call i32 (...) @taosCloseLogger()
  %91 = call i32 (...) @taosCleanupTier()
  br label %92

92:                                               ; preds = %88, %4
  ret void
}

declare dso_local i32 @taosTmrStopA(i32**) #1

declare dso_local i32 @vnodeCleanUpVnodes(...) #1

declare dso_local i32 @taosCloseLogger(...) #1

declare dso_local i32 @taosCleanupTier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
