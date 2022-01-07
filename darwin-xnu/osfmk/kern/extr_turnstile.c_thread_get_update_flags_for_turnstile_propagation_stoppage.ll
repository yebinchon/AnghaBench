; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_thread_get_update_flags_for_turnstile_propagation_stoppage.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_thread_get_update_flags_for_turnstile_propagation_stoppage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.waitq* }
%struct.waitq = type { i32 }

@TSU_THREAD_RUNNABLE = common dso_local global i32 0, align 4
@TSU_NO_TURNSTILE = common dso_local global i32 0, align 4
@TSU_NO_PRI_CHANGE_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @thread_get_update_flags_for_turnstile_propagation_stoppage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_get_update_flags_for_turnstile_propagation_stoppage(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.waitq*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.waitq*, %struct.waitq** %6, align 8
  store %struct.waitq* %7, %struct.waitq** %4, align 8
  %8 = load %struct.waitq*, %struct.waitq** %4, align 8
  %9 = icmp eq %struct.waitq* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @TSU_THREAD_RUNNABLE, align 4
  store i32 %11, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.waitq*, %struct.waitq** %4, align 8
  %14 = call i64 @waitq_is_port_queue(%struct.waitq* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.waitq*, %struct.waitq** %4, align 8
  %18 = call %struct.waitq* @waitq_get_safeq(%struct.waitq* %17)
  store %struct.waitq* %18, %struct.waitq** %4, align 8
  br label %19

19:                                               ; preds = %16, %12
  %20 = load %struct.waitq*, %struct.waitq** %4, align 8
  %21 = call i32 @waitq_is_turnstile_queue(%struct.waitq* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @TSU_NO_TURNSTILE, align 4
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @TSU_NO_PRI_CHANGE_NEEDED, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %23, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @waitq_is_port_queue(%struct.waitq*) #1

declare dso_local %struct.waitq* @waitq_get_safeq(%struct.waitq*) #1

declare dso_local i32 @waitq_is_turnstile_queue(%struct.waitq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
