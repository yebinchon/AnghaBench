; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_rcv_turnstile_waitq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_port.c_ipc_port_rcv_turnstile_waitq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { %struct.waitq }
%struct.waitq = type { i32 }

@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.waitq* @ipc_port_rcv_turnstile_waitq(%struct.waitq* %0) #0 {
  %2 = alloca %struct.waitq*, align 8
  %3 = alloca %struct.waitq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.turnstile*, align 8
  store %struct.waitq* %0, %struct.waitq** %2, align 8
  %7 = load %struct.waitq*, %struct.waitq** %2, align 8
  %8 = call i32 @imq_from_waitq(%struct.waitq* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ip_from_mq(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.turnstile* @ipc_port_rcv_turnstile(i32 %11)
  store %struct.turnstile* %12, %struct.turnstile** %6, align 8
  %13 = load %struct.turnstile*, %struct.turnstile** %6, align 8
  %14 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %15 = icmp ne %struct.turnstile* %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.turnstile*, %struct.turnstile** %6, align 8
  %18 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %17, i32 0, i32 0
  store %struct.waitq* %18, %struct.waitq** %3, align 8
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.waitq*, %struct.waitq** %2, align 8
  %21 = call %struct.waitq* @global_eventq(%struct.waitq* %20)
  store %struct.waitq* %21, %struct.waitq** %3, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.waitq*, %struct.waitq** %3, align 8
  ret %struct.waitq* %23
}

declare dso_local i32 @imq_from_waitq(%struct.waitq*) #1

declare dso_local i32 @ip_from_mq(i32) #1

declare dso_local %struct.turnstile* @ipc_port_rcv_turnstile(i32) #1

declare dso_local %struct.waitq* @global_eventq(%struct.waitq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
