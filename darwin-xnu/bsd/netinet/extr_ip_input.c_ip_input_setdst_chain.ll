; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_input.c_ip_input_setdst_chain.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_input.c_ip_input_setdst_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.in_ifaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, i32, %struct.in_ifaddr*)* @ip_input_setdst_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_input_setdst_chain(%struct.mbuf* %0, i32 %1, %struct.in_ifaddr* %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.in_ifaddr*, align 8
  %7 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.in_ifaddr* %2, %struct.in_ifaddr** %6, align 8
  %8 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %8, %struct.mbuf** %7, align 8
  br label %9

9:                                                ; preds = %12, %3
  %10 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %11 = icmp ne %struct.mbuf* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %16 = call i32 @ip_setdstifaddr_info(%struct.mbuf* %13, i32 %14, %struct.in_ifaddr* %15)
  %17 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %18 = call %struct.mbuf* @mbuf_nextpkt(%struct.mbuf* %17)
  store %struct.mbuf* %18, %struct.mbuf** %7, align 8
  br label %9

19:                                               ; preds = %9
  ret void
}

declare dso_local i32 @ip_setdstifaddr_info(%struct.mbuf*, i32, %struct.in_ifaddr*) #1

declare dso_local %struct.mbuf* @mbuf_nextpkt(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
