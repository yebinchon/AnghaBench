; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_dbgwrap.c_ml_dbgwrap_halt_cpu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_dbgwrap.c_ml_dbgwrap_halt_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@CORESIGHT_UTT = common dso_local global i64 0, align 8
@DBGWRAP_ERR_UNSUPPORTED = common dso_local global i32 0, align 4
@DBGWRAP_ERR_SELF_HALT = common dso_local global i32 0, align 4
@halt_from_cpu = common dso_local global i64 0, align 8
@DBGWRAP_ERR_INPROGRESS = common dso_local global i32 0, align 4
@DBGWRAP_REG_OFFSET = common dso_local global i64 0, align 8
@DBGWRAP_WARN_ALREADY_HALTED = common dso_local global i32 0, align 4
@DBGWRAP_DBGHALT = common dso_local global i32 0, align 4
@DBGWRAP_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ml_dbgwrap_halt_cpu(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
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
  br label %69

24:                                               ; preds = %14
  %25 = call i32 (...) @cpu_number()
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @DBGWRAP_ERR_SELF_HALT, align 4
  store i32 %30, i32* %3, align 4
  br label %69

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @hw_compare_and_store(i64 -1, i32 %32, i64* @halt_from_cpu)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* @halt_from_cpu, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @DBGWRAP_ERR_INPROGRESS, align 4
  store i32 %41, i32* %3, align 4
  br label %69

42:                                               ; preds = %35, %31
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @CORESIGHT_UTT, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DBGWRAP_REG_OFFSET, align 8
  %50 = add nsw i64 %48, %49
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %8, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @ml_dbgwrap_cpu_is_halted(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* @DBGWRAP_WARN_ALREADY_HALTED, align 4
  store i32 %56, i32* %3, align 4
  br label %69

57:                                               ; preds = %42
  %58 = load i32, i32* @DBGWRAP_DBGHALT, align 4
  %59 = load i32*, i32** %8, align 8
  store volatile i32 %58, i32* %59, align 4
  %60 = load i64, i64* %5, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @ml_dbgwrap_wait_cpu_halted(i32 %63, i64 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @DBGWRAP_SUCCESS, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %62, %55, %40, %29, %22
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_3__* @cpu_datap(i32) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @hw_compare_and_store(i64, i32, i64*) #1

declare dso_local i64 @ml_dbgwrap_cpu_is_halted(i32) #1

declare dso_local i32 @ml_dbgwrap_wait_cpu_halted(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
