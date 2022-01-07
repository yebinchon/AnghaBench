; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/debug/extr_lwip_debug.c_dbg_lwip_udp_pcb_one_show.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/debug/extr_lwip_debug.c_dbg_lwip_udp_pcb_one_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_pcb = type { i8*, i8*, %struct.udp_pcb*, %struct.udp_pcb*, i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"pcb=%p next=%p\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"flags=%x\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"local_port=%d remote_port=%d\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"recv cb=%p recv_arg=%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbg_lwip_udp_pcb_one_show(%struct.udp_pcb* %0) #0 {
  %2 = alloca %struct.udp_pcb*, align 8
  store %struct.udp_pcb* %0, %struct.udp_pcb** %2, align 8
  %3 = load %struct.udp_pcb*, %struct.udp_pcb** %2, align 8
  %4 = load %struct.udp_pcb*, %struct.udp_pcb** %2, align 8
  %5 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 (i8*, %struct.udp_pcb*, ...) @ESP_LWIP_LOGI(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.udp_pcb* %3, i8* %7)
  %9 = load %struct.udp_pcb*, %struct.udp_pcb** %2, align 8
  %10 = call i32 @DBG_LWIP_IP_PCB_SHOW(%struct.udp_pcb* %9)
  %11 = load %struct.udp_pcb*, %struct.udp_pcb** %2, align 8
  %12 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.udp_pcb*
  %16 = call i32 (i8*, %struct.udp_pcb*, ...) @ESP_LWIP_LOGI(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.udp_pcb* %15)
  %17 = load %struct.udp_pcb*, %struct.udp_pcb** %2, align 8
  %18 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %17, i32 0, i32 3
  %19 = load %struct.udp_pcb*, %struct.udp_pcb** %18, align 8
  %20 = load %struct.udp_pcb*, %struct.udp_pcb** %2, align 8
  %21 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i8*, %struct.udp_pcb*, ...) @ESP_LWIP_LOGI(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.udp_pcb* %19, i8* %22)
  %24 = load %struct.udp_pcb*, %struct.udp_pcb** %2, align 8
  %25 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %24, i32 0, i32 2
  %26 = load %struct.udp_pcb*, %struct.udp_pcb** %25, align 8
  %27 = load %struct.udp_pcb*, %struct.udp_pcb** %2, align 8
  %28 = getelementptr inbounds %struct.udp_pcb, %struct.udp_pcb* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, %struct.udp_pcb*, ...) @ESP_LWIP_LOGI(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), %struct.udp_pcb* %26, i8* %29)
  ret void
}

declare dso_local i32 @ESP_LWIP_LOGI(i8*, %struct.udp_pcb*, ...) #1

declare dso_local i32 @DBG_LWIP_IP_PCB_SHOW(%struct.udp_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
