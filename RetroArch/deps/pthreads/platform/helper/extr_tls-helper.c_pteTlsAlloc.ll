; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/platform/helper/extr_tls-helper.c_pteTlsAlloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/platform/helper/extr_tls-helper.c_pteTlsAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTE_OS_NO_RESOURCES = common dso_local global i32 0, align 4
@globalTlsLock = common dso_local global i32 0, align 4
@maxTlsValues = common dso_local global i32 0, align 4
@keysUsed = common dso_local global i32* null, align 8
@PTE_OS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pteTlsAlloc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @PTE_OS_NO_RESOURCES, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @globalTlsLock, align 4
  %7 = call i32 @pte_osMutexLock(i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @maxTlsValues, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load i32*, i32** @keysUsed, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load i32*, i32** @keysUsed, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32*, i32** %2, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @PTE_OS_OK, align 4
  store i32 %27, i32* %4, align 4
  br label %32

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %8

32:                                               ; preds = %19, %8
  %33 = load i32, i32* @globalTlsLock, align 4
  %34 = call i32 @pte_osMutexUnlock(i32 %33)
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @pte_osMutexLock(i32) #1

declare dso_local i32 @pte_osMutexUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
