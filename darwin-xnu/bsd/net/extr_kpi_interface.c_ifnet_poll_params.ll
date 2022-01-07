; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_poll_params.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_poll_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.ifnet_poll_params = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_poll_params(%struct.ifnet* %0, %struct.ifnet_poll_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.ifnet_poll_params*, align 8
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.ifnet_poll_params* %1, %struct.ifnet_poll_params** %5, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %8 = icmp eq %struct.ifnet* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %5, align 8
  %11 = icmp eq %struct.ifnet_poll_params* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %9
  %15 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %16 = call i32 @ifnet_is_attached(%struct.ifnet* %15, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %3, align 4
  br label %28

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = load %struct.ifnet_poll_params*, %struct.ifnet_poll_params** %5, align 8
  %24 = call i32 @dlil_rxpoll_get_params(%struct.ifnet* %22, %struct.ifnet_poll_params* %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %26 = call i32 @ifnet_decr_iorefcnt(%struct.ifnet* %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %18, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @ifnet_is_attached(%struct.ifnet*, i32) #1

declare dso_local i32 @dlil_rxpoll_get_params(%struct.ifnet*, %struct.ifnet_poll_params*) #1

declare dso_local i32 @ifnet_decr_iorefcnt(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
