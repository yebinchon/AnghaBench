; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_dbgwrap.c_ml_dbgwrap_wait_cpu_halted.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_dbgwrap.c_ml_dbgwrap_wait_cpu_halted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@CORESIGHT_UTT = common dso_local global i64 0, align 8
@DBGWRAP_ERR_UNSUPPORTED = common dso_local global i32 0, align 4
@DBGWRAP_REG_OFFSET = common dso_local global i64 0, align 8
@DBGWRAP_DBGACK = common dso_local global i32 0, align 4
@DBGWRAP_ERR_HALT_TIMEOUT = common dso_local global i32 0, align 4
@DBGWRAP_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ml_dbgwrap_wait_cpu_halted(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.TYPE_3__* @cpu_datap(i32 %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = icmp eq %struct.TYPE_3__* %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* @CORESIGHT_UTT, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14, %2
  %23 = load i32, i32* @DBGWRAP_ERR_UNSUPPORTED, align 4
  store i32 %23, i32* %3, align 4
  br label %55

24:                                               ; preds = %14
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @CORESIGHT_UTT, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DBGWRAP_REG_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %7, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @nanoseconds_to_absolutetime(i64 %34, i64* %8)
  %36 = call i64 (...) @mach_absolute_time()
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %36, %37
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %52, %24
  %40 = load i32*, i32** %7, align 8
  %41 = load volatile i32, i32* %40, align 4
  %42 = load volatile i32, i32* @DBGWRAP_DBGACK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = call i64 (...) @mach_absolute_time()
  %48 = load i64, i64* %9, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @DBGWRAP_ERR_HALT_TIMEOUT, align 4
  store i32 %51, i32* %3, align 4
  br label %55

52:                                               ; preds = %46
  br label %39

53:                                               ; preds = %39
  %54 = load i32, i32* @DBGWRAP_SUCCESS, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %50, %22
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_3__* @cpu_datap(i32) #1

declare dso_local i32 @nanoseconds_to_absolutetime(i64, i64*) #1

declare dso_local i64 @mach_absolute_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
