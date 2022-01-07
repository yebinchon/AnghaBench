; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_thread_get_waiting_turnstile.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_thread_get_waiting_turnstile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.TYPE_3__ = type { %struct.waitq* }
%struct.waitq = type { i32 }

@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.turnstile* @thread_get_waiting_turnstile(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.turnstile*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.turnstile*, align 8
  %5 = alloca %struct.waitq*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %6, %struct.turnstile** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.waitq*, %struct.waitq** %8, align 8
  store %struct.waitq* %9, %struct.waitq** %5, align 8
  %10 = load %struct.waitq*, %struct.waitq** %5, align 8
  %11 = icmp eq %struct.waitq* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  store %struct.turnstile* %13, %struct.turnstile** %2, align 8
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.waitq*, %struct.waitq** %5, align 8
  %16 = call i64 @waitq_is_port_queue(%struct.waitq* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.waitq*, %struct.waitq** %5, align 8
  %20 = call %struct.waitq* @waitq_get_safeq(%struct.waitq* %19)
  store %struct.waitq* %20, %struct.waitq** %5, align 8
  br label %21

21:                                               ; preds = %18, %14
  %22 = load %struct.waitq*, %struct.waitq** %5, align 8
  %23 = call i64 @waitq_is_turnstile_queue(%struct.waitq* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.waitq*, %struct.waitq** %5, align 8
  %27 = call %struct.turnstile* @waitq_to_turnstile(%struct.waitq* %26)
  store %struct.turnstile* %27, %struct.turnstile** %4, align 8
  br label %28

28:                                               ; preds = %25, %21
  %29 = load %struct.turnstile*, %struct.turnstile** %4, align 8
  store %struct.turnstile* %29, %struct.turnstile** %2, align 8
  br label %30

30:                                               ; preds = %28, %12
  %31 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  ret %struct.turnstile* %31
}

declare dso_local i64 @waitq_is_port_queue(%struct.waitq*) #1

declare dso_local %struct.waitq* @waitq_get_safeq(%struct.waitq*) #1

declare dso_local i64 @waitq_is_turnstile_queue(%struct.waitq*) #1

declare dso_local %struct.turnstile* @waitq_to_turnstile(%struct.waitq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
