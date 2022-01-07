; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_cpu_setup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_cpu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32 }

@cpu_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_anon = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@DTRACE_ACTIVITY_ACTIVE = common dso_local global i32 0, align 4
@DTRACEOPT_CPU = common dso_local global i64 0, align 8
@DTRACE_CPUALL = common dso_local global i32 0, align 4
@DTRACEOPT_UNSET = common dso_local global i32 0, align 4
@DTRACEOPT_BUFRESIZE = common dso_local global i64 0, align 8
@DTRACEOPT_BUFRESIZE_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @dtrace_cpu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_cpu_setup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %10 = call i32 @LCK_MTX_ASSERT(i32* @cpu_lock, i32 %9)
  %11 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %68 [
    i32 129, label %13
    i32 128, label %67
  ]

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dtrace_anon, i32 0, i32 0), align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %5, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %69

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DTRACE_ACTIVITY_ACTIVE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %69

24:                                               ; preds = %17
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* @DTRACEOPT_CPU, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @DTRACE_CPUALL, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @DTRACEOPT_UNSET, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %69

44:                                               ; preds = %39, %35, %24
  %45 = load i32*, i32** %6, align 8
  %46 = load i64, i64* @DTRACEOPT_BUFRESIZE, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @DTRACEOPT_BUFRESIZE_MANUAL, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* @DTRACEOPT_BUFRESIZE, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i64, i64* @DTRACEOPT_CPU, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %53, i32* %56, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = call i32 @dtrace_state_buffers(%struct.TYPE_4__* %57)
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i64, i64* @DTRACEOPT_BUFRESIZE, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i64, i64* @DTRACEOPT_CPU, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 %63, i32* %66, align 4
  br label %69

67:                                               ; preds = %2
  br label %69

68:                                               ; preds = %2
  br label %69

69:                                               ; preds = %68, %67, %44, %43, %23, %16
  %70 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  ret i32 0
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @dtrace_state_buffers(%struct.TYPE_4__*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
