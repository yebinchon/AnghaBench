; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_networking.c__udp_pcb_main_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_networking.c__udp_pcb_main_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@_pcb_main = common dso_local global %struct.TYPE_6__* null, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@IP_ANY_TYPE = common dso_local global i32 0, align 4
@MDNS_SERVICE_PORT = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@ip_addr_any_type = common dso_local global i32 0, align 4
@_udp_recv = common dso_local global i32 0, align 4
@_mdns_server = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @_udp_pcb_main_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_udp_pcb_main_init() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_pcb_main, align 8
  %3 = icmp ne %struct.TYPE_6__* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i32, i32* @ESP_OK, align 4
  store i32 %5, i32* %1, align 4
  br label %37

6:                                                ; preds = %0
  %7 = call %struct.TYPE_6__* (...) @udp_new()
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** @_pcb_main, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_pcb_main, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %11, i32* %1, align 4
  br label %37

12:                                               ; preds = %6
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_pcb_main, align 8
  %14 = load i32, i32* @IP_ANY_TYPE, align 4
  %15 = load i32, i32* @MDNS_SERVICE_PORT, align 4
  %16 = call i64 @udp_bind(%struct.TYPE_6__* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_pcb_main, align 8
  %20 = call i32 @udp_remove(%struct.TYPE_6__* %19)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @_pcb_main, align 8
  %21 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %21, i32* %1, align 4
  br label %37

22:                                               ; preds = %12
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_pcb_main, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @MDNS_SERVICE_PORT, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_pcb_main, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_pcb_main, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ip_addr_any_type, align 4
  %32 = call i32 @ip_addr_copy(i32 %30, i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_pcb_main, align 8
  %34 = load i32, i32* @_mdns_server, align 4
  %35 = call i32 @udp_recv(%struct.TYPE_6__* %33, i32* @_udp_recv, i32 %34)
  %36 = load i32, i32* @ESP_OK, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %22, %18, %10, %4
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_6__* @udp_new(...) #1

declare dso_local i64 @udp_bind(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @udp_remove(%struct.TYPE_6__*) #1

declare dso_local i32 @ip_addr_copy(i32, i32) #1

declare dso_local i32 @udp_recv(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
