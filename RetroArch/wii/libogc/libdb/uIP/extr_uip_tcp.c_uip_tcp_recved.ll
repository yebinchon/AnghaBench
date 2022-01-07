; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_recved.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_recved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_tcp_pcb = type { i32, i32 }

@UIP_TCP_WND = common dso_local global i32 0, align 4
@UIP_TF_ACK_DELAY = common dso_local global i32 0, align 4
@UIP_TF_ACK_NOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uip_tcp_recved(%struct.uip_tcp_pcb* %0, i32 %1) #0 {
  %3 = alloca %struct.uip_tcp_pcb*, align 8
  %4 = alloca i32, align 4
  store %struct.uip_tcp_pcb* %0, %struct.uip_tcp_pcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %6 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %7, %8
  %10 = load i32, i32* @UIP_TCP_WND, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @UIP_TCP_WND, align 4
  %14 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %15 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %19 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %16, %12
  %23 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %24 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @UIP_TF_ACK_DELAY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %22
  %30 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %31 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UIP_TF_ACK_NOW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %38 = call i32 @uip_tcp_ack(%struct.uip_tcp_pcb* %37)
  br label %57

39:                                               ; preds = %29, %22
  %40 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %41 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UIP_TF_ACK_DELAY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %48 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @UIP_TCP_WND, align 4
  %51 = sdiv i32 %50, 2
  %52 = icmp sge i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %55 = call i32 @uip_tcp_acknow(%struct.uip_tcp_pcb* %54)
  br label %56

56:                                               ; preds = %53, %46, %39
  br label %57

57:                                               ; preds = %56, %36
  ret void
}

declare dso_local i32 @uip_tcp_ack(%struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcp_acknow(%struct.uip_tcp_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
