; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_so_drain_extended_bk_idle.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_so_drain_extended_bk_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.socket = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@SOF1_EXTEND_BK_IDLE_INPROG = common dso_local global i32 0, align 4
@soextbkidlestat = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @so_drain_extended_bk_idle(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %3 = load %struct.socket*, %struct.socket** %2, align 8
  %4 = icmp ne %struct.socket* %3, null
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SOF1_EXTEND_BK_IDLE_INPROG, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %5
  %13 = load %struct.socket*, %struct.socket** %2, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.socket*, %struct.socket** %2, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18, %12
  %25 = load %struct.socket*, %struct.socket** %2, align 8
  %26 = call i32 @so_stop_extended_bk_idle(%struct.socket* %25)
  %27 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @soextbkidlestat, i32 0, i32 0))
  br label %28

28:                                               ; preds = %24, %18
  br label %29

29:                                               ; preds = %28, %5, %1
  ret void
}

declare dso_local i32 @so_stop_extended_bk_idle(%struct.socket*) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
