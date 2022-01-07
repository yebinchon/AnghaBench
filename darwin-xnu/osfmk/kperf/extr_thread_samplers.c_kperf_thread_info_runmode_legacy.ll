; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_thread_samplers.c_kperf_thread_info_runmode_legacy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_thread_samplers.c_kperf_thread_info_runmode_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }

@PROCESSOR_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@KPERF_TI_RUNNING = common dso_local global i32 0, align 4
@TH_RUN = common dso_local global i32 0, align 4
@KPERF_TI_RUNNABLE = common dso_local global i32 0, align 4
@TH_WAIT = common dso_local global i32 0, align 4
@KPERF_TI_WAIT = common dso_local global i32 0, align 4
@TH_UNINT = common dso_local global i32 0, align 4
@KPERF_TI_UNINT = common dso_local global i32 0, align 4
@TH_SUSP = common dso_local global i32 0, align 4
@KPERF_TI_SUSP = common dso_local global i32 0, align 4
@TH_TERMINATE = common dso_local global i32 0, align 4
@KPERF_TI_TERMINATE = common dso_local global i32 0, align 4
@TH_IDLE = common dso_local global i32 0, align 4
@KPERF_TI_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @kperf_thread_info_runmode_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kperf_thread_info_runmode_legacy(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PROCESSOR_NULL, align 8
  %15 = icmp ne %struct.TYPE_6__* %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp eq %struct.TYPE_5__* %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @KPERF_TI_RUNNING, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %16, %1
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @TH_RUN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @KPERF_TI_RUNNABLE, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @TH_WAIT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @KPERF_TI_WAIT, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @TH_UNINT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @KPERF_TI_UNINT, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @TH_SUSP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @KPERF_TI_SUSP, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @TH_TERMINATE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @KPERF_TI_TERMINATE, align 4
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @TH_IDLE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @KPERF_TI_IDLE, align 4
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @TH_IDLE, align 4
  %85 = shl i32 %84, 16
  store i32 %85, i32* %2, align 4
  br label %94

86:                                               ; preds = %80
  %87 = load i32, i32* %4, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %88, 65535
  %90 = shl i32 %89, 16
  %91 = load i32, i32* %4, align 4
  %92 = and i32 %91, 65535
  %93 = or i32 %90, %92
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %86, %83
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
