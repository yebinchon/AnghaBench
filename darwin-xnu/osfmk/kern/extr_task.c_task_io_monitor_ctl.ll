; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task.c_task_io_monitor_ctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task.c_task_io_monitor_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@IOMON_ENABLE = common dso_local global i32 0, align 4
@task_ledgers = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@task_iomon_limit_mb = common dso_local global i32 0, align 4
@task_iomon_interval_secs = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@IOMON_DISABLE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_io_monitor_ctl(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = call i32 @task_lock(%struct.TYPE_6__* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IOMON_ENABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @task_ledgers, i32 0, i32 1), align 4
  %19 = load i32, i32* @task_iomon_limit_mb, align 4
  %20 = mul nsw i32 %19, 1024
  %21 = mul nsw i32 %20, 1024
  %22 = call i32 @ledger_set_limit(i32 %17, i32 %18, i32 %21, i32 0)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @task_ledgers, i32 0, i32 1), align 4
  %25 = load i32, i32* @task_iomon_interval_secs, align 4
  %26 = load i32, i32* @NSEC_PER_SEC, align 4
  %27 = mul nsw i32 %25, %26
  %28 = call i32 @ledger_set_period(i32 %23, i32 %24, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @task_ledgers, i32 0, i32 0), align 4
  %31 = load i32, i32* @task_iomon_limit_mb, align 4
  %32 = mul nsw i32 %31, 1024
  %33 = mul nsw i32 %32, 1024
  %34 = call i32 @ledger_set_limit(i32 %29, i32 %30, i32 %33, i32 0)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @task_ledgers, i32 0, i32 0), align 4
  %37 = load i32, i32* @task_iomon_interval_secs, align 4
  %38 = load i32, i32* @NSEC_PER_SEC, align 4
  %39 = mul nsw i32 %37, %38
  %40 = call i32 @ledger_set_period(i32 %35, i32 %36, i32 %39)
  br label %61

41:                                               ; preds = %2
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IOMON_DISABLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @task_ledgers, i32 0, i32 1), align 4
  %50 = call i32 @ledger_disable_refill(i32 %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @task_ledgers, i32 0, i32 1), align 4
  %53 = call i32 @ledger_disable_callback(i32 %51, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @task_ledgers, i32 0, i32 0), align 4
  %56 = call i32 @ledger_disable_refill(i32 %54, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @task_ledgers, i32 0, i32 0), align 4
  %59 = call i32 @ledger_disable_callback(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %47, %41
  br label %61

61:                                               ; preds = %60, %16
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = call i32 @task_unlock(%struct.TYPE_6__* %62)
  %64 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %64
}

declare dso_local i32 @task_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @ledger_set_limit(i32, i32, i32, i32) #1

declare dso_local i32 @ledger_set_period(i32, i32, i32) #1

declare dso_local i32 @ledger_disable_refill(i32, i32) #1

declare dso_local i32 @ledger_disable_callback(i32, i32) #1

declare dso_local i32 @task_unlock(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
