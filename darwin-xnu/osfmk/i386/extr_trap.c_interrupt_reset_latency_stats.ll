; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_trap.c_interrupt_reset_latency_stats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_trap.c_interrupt_reset_latency_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@real_ncpus = common dso_local global i64 0, align 8
@cpu_data_ptr = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interrupt_reset_latency_stats() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %17, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @real_ncpus, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @cpu_data_ptr, align 8
  %8 = load i64, i64* %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %7, i64 %8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @cpu_data_ptr, align 8
  %13 = load i64, i64* %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %6
  %18 = load i64, i64* %1, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %1, align 8
  br label %2

20:                                               ; preds = %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
