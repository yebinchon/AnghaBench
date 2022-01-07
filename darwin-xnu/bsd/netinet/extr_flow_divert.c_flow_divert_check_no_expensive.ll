; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_check_no_expensive.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_check_no_expensive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { i32 }
%struct.inpcb = type { i64 }

@EHOSTUNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_divert_pcb*)* @flow_divert_check_no_expensive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_check_no_expensive(%struct.flow_divert_pcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flow_divert_pcb*, align 8
  %4 = alloca %struct.inpcb*, align 8
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %3, align 8
  store %struct.inpcb* null, %struct.inpcb** %4, align 8
  %5 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %6 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.inpcb* @sotoinpcb(i32 %7)
  store %struct.inpcb* %8, %struct.inpcb** %4, align 8
  %9 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %10 = icmp ne %struct.inpcb* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %13 = call i64 @INP_NO_EXPENSIVE(%struct.inpcb* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %17 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %22 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @IFNET_IS_EXPENSIVE(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %20, %15, %11, %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.inpcb* @sotoinpcb(i32) #1

declare dso_local i64 @INP_NO_EXPENSIVE(%struct.inpcb*) #1

declare dso_local i64 @IFNET_IS_EXPENSIVE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
