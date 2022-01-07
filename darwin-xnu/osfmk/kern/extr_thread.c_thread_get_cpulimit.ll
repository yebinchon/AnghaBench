; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_get_cpulimit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_get_cpulimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@LEDGER_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@thread_ledgers = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@LEDGER_LIMIT_INFINITY = common dso_local global i64 0, align 8
@TH_OPT_PROC_CPULIMIT = common dso_local global i32 0, align 4
@TH_OPT_PRVT_CPULIMIT = common dso_local global i32 0, align 4
@THREAD_CPULIMIT_BLOCK = common dso_local global i32 0, align 4
@THREAD_CPULIMIT_EXCEPTION = common dso_local global i32 0, align 4
@THREAD_CPULIMIT_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_get_cpulimit(i32* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = call %struct.TYPE_4__* (...) @current_thread()
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %10, align 8
  %12 = load i32*, i32** %6, align 8
  store i32 0, i32* %12, align 4
  %13 = load i64*, i64** %7, align 8
  store i64 0, i64* %13, align 8
  %14 = load i32*, i32** %5, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LEDGER_NULL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %21, i32* %4, align 4
  br label %99

22:                                               ; preds = %3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_ledgers, i32 0, i32 0), align 4
  %27 = load i64*, i64** %7, align 8
  %28 = call i32 @ledger_get_period(i64 %25, i32 %26, i64* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @thread_ledgers, i32 0, i32 0), align 4
  %33 = call i32 @ledger_get_limit(i64 %31, i32 %32, i64* %8)
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @LEDGER_LIMIT_INFINITY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %22
  %38 = load i64*, i64** %7, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %22
  %42 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %42, i32* %4, align 4
  br label %99

43:                                               ; preds = %37
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @absolutetime_to_nanoseconds(i64 %44, i64* %9)
  %46 = load i64, i64* %9, align 8
  %47 = mul i64 %46, 100
  %48 = load i64*, i64** %7, align 8
  %49 = load i64, i64* %48, align 8
  %50 = udiv i64 %47, %49
  %51 = trunc i64 %50 to i32
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp sle i32 %54, 100
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @TH_OPT_PROC_CPULIMIT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %43
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @TH_OPT_PRVT_CPULIMIT, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32, i32* @THREAD_CPULIMIT_BLOCK, align 4
  %74 = load i32*, i32** %5, align 8
  store i32 %73, i32* %74, align 4
  br label %97

75:                                               ; preds = %43
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @TH_OPT_PRVT_CPULIMIT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %75
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @TH_OPT_PROC_CPULIMIT, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i32, i32* @THREAD_CPULIMIT_EXCEPTION, align 4
  %92 = load i32*, i32** %5, align 8
  store i32 %91, i32* %92, align 4
  br label %96

93:                                               ; preds = %75
  %94 = load i32, i32* @THREAD_CPULIMIT_DISABLE, align 4
  %95 = load i32*, i32** %5, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %82
  br label %97

97:                                               ; preds = %96, %64
  %98 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %41, %20
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_4__* @current_thread(...) #1

declare dso_local i32 @ledger_get_period(i64, i32, i64*) #1

declare dso_local i32 @ledger_get_limit(i64, i32, i64*) #1

declare dso_local i32 @absolutetime_to_nanoseconds(i64, i64*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
