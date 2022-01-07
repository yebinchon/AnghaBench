; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kdebug_trigger.c_kperf_kdebug_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kdebug_trigger.c_kperf_kdebug_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@kperf_kdebug_action = common dso_local global i64 0, align 8
@kperf_kdebug_filter = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@kperf_kdebug_active = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kperf_kdebug_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kperf_kdebug_update() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @kperf_init()
  store i32 %2, i32* %1, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %17

5:                                                ; preds = %0
  %6 = load i64, i64* @kperf_kdebug_action, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kperf_kdebug_filter, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* @kperf_kdebug_active, align 4
  br label %17

15:                                               ; preds = %8, %5
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* @kperf_kdebug_active, align 4
  br label %17

17:                                               ; preds = %4, %15, %13
  ret void
}

declare dso_local i32 @kperf_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
