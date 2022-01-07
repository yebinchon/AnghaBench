; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/debug/extr_lwip_debug.c_dbg_lwip_udp_pcb_show.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/debug/extr_lwip_debug.c_dbg_lwip_udp_pcb_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_pcb = type { %struct.udp_pcb* }

@udp_pcbs = common dso_local global %struct.udp_pcb* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbg_lwip_udp_pcb_show() #0 {
  %1 = alloca %struct.udp_pcb*, align 8
  %2 = load %struct.udp_pcb*, %struct.udp_pcb** @udp_pcbs, align 8
  store %struct.udp_pcb* %2, %struct.udp_pcb** %1, align 8
  br label %3

3:                                                ; preds = %6, %0
  %4 = load %struct.udp_pcb*, %struct.udp_pcb** %1, align 8
  %5 = icmp ne %struct.udp_pcb* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load %struct.udp_pcb*, %struct.udp_pcb** %1, align 8
  %8 = call i32 @dbg_lwip_udp_pcb_one_show(%struct.udp_pcb* %7)
  %9 = load %struct.udp_pcb*, %struct.udp_pcb** %1, align 8
  %10 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %9, i32 0, i32 0
  %11 = load %struct.udp_pcb*, %struct.udp_pcb** %10, align 8
  store %struct.udp_pcb* %11, %struct.udp_pcb** %1, align 8
  br label %3

12:                                               ; preds = %3
  ret void
}

declare dso_local i32 @dbg_lwip_udp_pcb_one_show(%struct.udp_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
