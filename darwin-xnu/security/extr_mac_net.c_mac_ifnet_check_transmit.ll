; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_net.c_mac_ifnet_check_transmit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_net.c_mac_ifnet_check_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.label = type { i32 }

@ifnet_check_transmit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_ifnet_check_transmit(%struct.ifnet* %0, %struct.mbuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.label*, align 8
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %12 = call %struct.label* @mac_mbuf_to_label(%struct.mbuf* %11)
  store %struct.label* %12, %struct.label** %9, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %14 = call i32 @ifnet_lock_shared(%struct.ifnet* %13)
  %15 = load i32, i32* @ifnet_check_transmit, align 4
  %16 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %21 = load %struct.label*, %struct.label** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @MAC_CHECK(i32 %15, %struct.ifnet* %16, i32 %19, %struct.mbuf* %20, %struct.label* %21, i32 %22, i32 %23)
  %25 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %26 = call i32 @ifnet_lock_done(%struct.ifnet* %25)
  %27 = load i32, i32* %10, align 4
  ret i32 %27
}

declare dso_local %struct.label* @mac_mbuf_to_label(%struct.mbuf*) #1

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local i32 @MAC_CHECK(i32, %struct.ifnet*, i32, %struct.mbuf*, %struct.label*, i32, i32) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
