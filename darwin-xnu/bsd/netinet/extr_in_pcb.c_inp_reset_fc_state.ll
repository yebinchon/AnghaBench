; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_reset_fc_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_reset_fc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, %struct.socket* }
%struct.socket = type { i32 }

@INP_FLOW_CONTROLLED = common dso_local global i32 0, align 4
@INP_FLOW_SUSPENDED = common dso_local global i32 0, align 4
@SOF_SUSPENDED = common dso_local global i32 0, align 4
@SO_FILT_HINT_LOCKED = common dso_local global i32 0, align 4
@SO_FILT_HINT_RESUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inp_reset_fc_state(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %6 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %7 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %6, i32 0, i32 1
  %8 = load %struct.socket*, %struct.socket** %7, align 8
  store %struct.socket* %8, %struct.socket** %3, align 8
  %9 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %10 = call i64 @INP_IS_FLOW_SUSPENDED(%struct.inpcb* %9)
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  store i32 %13, i32* %4, align 4
  %14 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %15 = call i64 @INP_WAIT_FOR_IF_FEEDBACK(%struct.inpcb* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @INP_FLOW_CONTROLLED, align 4
  %20 = load i32, i32* @INP_FLOW_SUSPENDED, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %24 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %1
  %30 = load i32, i32* @SOF_SUSPENDED, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.socket*, %struct.socket** %3, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.socket*, %struct.socket** %3, align 8
  %37 = load i32, i32* @SO_FILT_HINT_LOCKED, align 4
  %38 = load i32, i32* @SO_FILT_HINT_RESUME, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @soevent(%struct.socket* %36, i32 %39)
  br label %41

41:                                               ; preds = %29, %1
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.socket*, %struct.socket** %3, align 8
  %46 = call i32 @sowwakeup(%struct.socket* %45)
  br label %47

47:                                               ; preds = %44, %41
  ret void
}

declare dso_local i64 @INP_IS_FLOW_SUSPENDED(%struct.inpcb*) #1

declare dso_local i64 @INP_WAIT_FOR_IF_FEEDBACK(%struct.inpcb*) #1

declare dso_local i32 @soevent(%struct.socket*, i32) #1

declare dso_local i32 @sowwakeup(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
