; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task.c_task_wakeups_monitor_ctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task.c_task_wakeups_monitor_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@WAKEMON_GET_PARAMS = common dso_local global i32 0, align 4
@task_ledgers = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@LEDGER_LIMIT_INFINITY = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@WAKEMON_ENABLE = common dso_local global i32 0, align 4
@TASK_RUSECPU_FLAGS_FATAL_WAKEUPSMON = common dso_local global i32 0, align 4
@WAKEMON_MAKE_FATAL = common dso_local global i32 0, align 4
@WAKEMON_DISABLE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@WAKEMON_SET_DEFAULTS = common dso_local global i32 0, align 4
@task_wakeups_monitor_rate = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@task_wakeups_monitor_interval = common dso_local global i32 0, align 4
@task_wakeups_monitor_ustackshots_trigger_pct = common dso_local global i32 0, align 4
@TF_WAKEMON_WARNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_wakeups_monitor_ctl(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = call i32 @task_lock(%struct.TYPE_7__* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WAKEMON_GET_PARAMS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @task_ledgers, i32 0, i32 0), align 4
  %24 = call i32 @ledger_get_limit(i32 %22, i32 %23, i32* %9)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @task_ledgers, i32 0, i32 0), align 4
  %27 = call i32 @ledger_get_period(i32 %25, i32 %26, i32* %10)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @LEDGER_LIMIT_INFINITY, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @NSEC_PER_SEC, align 4
  %35 = sdiv i32 %33, %34
  %36 = sdiv i32 %32, %35
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @WAKEMON_ENABLE, align 4
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TASK_RUSECPU_FLAGS_FATAL_WAKEUPSMON, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %31
  %47 = load i32, i32* @WAKEMON_MAKE_FATAL, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %46, %31
  br label %56

52:                                               ; preds = %21
  %53 = load i32, i32* @WAKEMON_DISABLE, align 4
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 -1, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %51
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = call i32 @task_unlock(%struct.TYPE_7__* %57)
  %59 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %59, i32* %4, align 4
  br label %131

60:                                               ; preds = %3
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @WAKEMON_ENABLE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %113

66:                                               ; preds = %60
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @WAKEMON_SET_DEFAULTS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @task_wakeups_monitor_rate, align 4
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %66
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @WAKEMON_MAKE_FATAL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i32, i32* @TASK_RUSECPU_FLAGS_FATAL_WAKEUPSMON, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %75
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = call i32 @task_unlock(%struct.TYPE_7__* %92)
  %94 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %94, i32* %4, align 4
  br label %131

95:                                               ; preds = %87
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @task_ledgers, i32 0, i32 0), align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @task_wakeups_monitor_interval, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* @task_wakeups_monitor_ustackshots_trigger_pct, align 4
  %103 = call i32 @ledger_set_limit(i32 %96, i32 %97, i32 %101, i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @task_ledgers, i32 0, i32 0), align 4
  %106 = load i32, i32* @task_wakeups_monitor_interval, align 4
  %107 = load i32, i32* @NSEC_PER_SEC, align 4
  %108 = mul nsw i32 %106, %107
  %109 = call i32 @ledger_set_period(i32 %104, i32 %105, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @task_ledgers, i32 0, i32 0), align 4
  %112 = call i32 @ledger_enable_callback(i32 %110, i32 %111)
  br label %127

113:                                              ; preds = %60
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @WAKEMON_DISABLE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @task_ledgers, i32 0, i32 0), align 4
  %122 = call i32 @ledger_disable_refill(i32 %120, i32 %121)
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @task_ledgers, i32 0, i32 0), align 4
  %125 = call i32 @ledger_disable_callback(i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %119, %113
  br label %127

127:                                              ; preds = %126, %95
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %129 = call i32 @task_unlock(%struct.TYPE_7__* %128)
  %130 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %127, %91, %56
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @task_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @ledger_get_limit(i32, i32, i32*) #1

declare dso_local i32 @ledger_get_period(i32, i32, i32*) #1

declare dso_local i32 @task_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @ledger_set_limit(i32, i32, i32, i32) #1

declare dso_local i32 @ledger_set_period(i32, i32, i32) #1

declare dso_local i32 @ledger_enable_callback(i32, i32) #1

declare dso_local i32 @ledger_disable_refill(i32, i32) #1

declare dso_local i32 @ledger_disable_callback(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
