; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_net.c_mac_mbuf_label_associate_socket.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_net.c_mac_mbuf_label_associate_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.mbuf = type { i32 }
%struct.label = type { i32 }
%struct.xsocket = type { i32 }

@mbuf_label_associate_socket = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_mbuf_label_associate_socket(%struct.socket* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.label*, align 8
  %6 = alloca %struct.xsocket, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %8 = call %struct.label* @mac_mbuf_to_label(%struct.mbuf* %7)
  store %struct.label* %8, %struct.label** %5, align 8
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = call i32 @sotoxsocket(%struct.socket* %9, %struct.xsocket* %6)
  %11 = load i32, i32* @mbuf_label_associate_socket, align 4
  %12 = load %struct.socket*, %struct.socket** %3, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %16 = load %struct.label*, %struct.label** %5, align 8
  %17 = call i32 @MAC_PERFORM(i32 %11, %struct.xsocket* %6, i32 %14, %struct.mbuf* %15, %struct.label* %16)
  ret void
}

declare dso_local %struct.label* @mac_mbuf_to_label(%struct.mbuf*) #1

declare dso_local i32 @sotoxsocket(%struct.socket*, %struct.xsocket*) #1

declare dso_local i32 @MAC_PERFORM(i32, %struct.xsocket*, i32, %struct.mbuf*, %struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
