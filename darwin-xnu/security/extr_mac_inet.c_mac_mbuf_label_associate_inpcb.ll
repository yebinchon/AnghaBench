; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_inet.c_mac_mbuf_label_associate_inpcb.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_inet.c_mac_mbuf_label_associate_inpcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }
%struct.mbuf = type { i32 }
%struct.label = type { i32 }

@mbuf_label_associate_inpcb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_mbuf_label_associate_inpcb(%struct.inpcb* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.label*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %6 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %7 = call %struct.label* @mac_mbuf_to_label(%struct.mbuf* %6)
  store %struct.label* %7, %struct.label** %5, align 8
  %8 = load i32, i32* @mbuf_label_associate_inpcb, align 4
  %9 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %10 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %11 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %14 = load %struct.label*, %struct.label** %5, align 8
  %15 = call i32 @MAC_PERFORM(i32 %8, %struct.inpcb* %9, i32 %12, %struct.mbuf* %13, %struct.label* %14)
  ret void
}

declare dso_local %struct.label* @mac_mbuf_to_label(%struct.mbuf*) #1

declare dso_local i32 @MAC_PERFORM(i32, %struct.inpcb*, i32, %struct.mbuf*, %struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
