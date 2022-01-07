; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeSystem.c_vnodeInitQueryHandle.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeSystem.c_vnodeInitQueryHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tsRatioOfQueryThreads = common dso_local global i32 0, align 4
@tsNumOfCores = common dso_local global i32 0, align 4
@tsNumOfThreadsPerCore = common dso_local global i32 0, align 4
@tsNumOfVnodesPerCore = common dso_local global i32 0, align 4
@tsSessionsPerVnode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"query\00", align 1
@queryQhandle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeInitQueryHandle() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @tsRatioOfQueryThreads, align 4
  %3 = load i32, i32* @tsNumOfCores, align 4
  %4 = mul nsw i32 %2, %3
  %5 = load i32, i32* @tsNumOfThreadsPerCore, align 4
  %6 = mul nsw i32 %4, %5
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %10

10:                                               ; preds = %9, %0
  %11 = load i32, i32* @tsNumOfVnodesPerCore, align 4
  %12 = load i32, i32* @tsNumOfCores, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32, i32* @tsSessionsPerVnode, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @taosInitScheduler(i32 %15, i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* @queryQhandle, align 4
  ret i32 1
}

declare dso_local i32 @taosInitScheduler(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
