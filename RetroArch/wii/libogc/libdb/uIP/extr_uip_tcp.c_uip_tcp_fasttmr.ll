; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_fasttmr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_fasttmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_tcp_pcb = type { i32, %struct.uip_tcp_pcb* }

@uip_tcp_active_pcbs = common dso_local global %struct.uip_tcp_pcb* null, align 8
@UIP_TF_ACK_DELAY = common dso_local global i32 0, align 4
@UIP_TF_ACK_NOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uip_tcp_fasttmr() #0 {
  %1 = alloca %struct.uip_tcp_pcb*, align 8
  %2 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** @uip_tcp_active_pcbs, align 8
  store %struct.uip_tcp_pcb* %2, %struct.uip_tcp_pcb** %1, align 8
  br label %3

3:                                                ; preds = %25, %0
  %4 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %1, align 8
  %5 = icmp ne %struct.uip_tcp_pcb* %4, null
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %1, align 8
  %8 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @UIP_TF_ACK_DELAY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %6
  %14 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %1, align 8
  %15 = call i32 @uip_tcp_acknow(%struct.uip_tcp_pcb* %14)
  %16 = load i32, i32* @UIP_TF_ACK_DELAY, align 4
  %17 = load i32, i32* @UIP_TF_ACK_NOW, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %1, align 8
  %21 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %13, %6
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %1, align 8
  %27 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %26, i32 0, i32 1
  %28 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %27, align 8
  store %struct.uip_tcp_pcb* %28, %struct.uip_tcp_pcb** %1, align 8
  br label %3

29:                                               ; preds = %3
  ret void
}

declare dso_local i32 @uip_tcp_acknow(%struct.uip_tcp_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
