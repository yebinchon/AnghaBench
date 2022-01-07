; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_has_pcb_local_address.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_has_pcb_local_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@INADDR_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inpcb*)* @flow_divert_has_pcb_local_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_has_pcb_local_address(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %3 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %4 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %9 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @INADDR_ANY, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %7
  %15 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %16 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %15, i32 0, i32 1
  %17 = call i32 @IN6_IS_ADDR_UNSPECIFIED(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %7
  %21 = phi i1 [ true, %7 ], [ %19, %14 ]
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi i1 [ false, %1 ], [ %21, %20 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
