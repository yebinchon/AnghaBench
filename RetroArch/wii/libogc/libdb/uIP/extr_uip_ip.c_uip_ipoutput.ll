; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_ip.c_uip_ipoutput.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_ip.c_uip_ipoutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_pbuf = type { i32 }
%struct.uip_ip_addr = type { i32 }
%struct.uip_netif = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"uip_ipoutput: No route found.\0A\00", align 1
@UIP_ERR_RTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uip_ipoutput(%struct.uip_pbuf* %0, %struct.uip_ip_addr* %1, %struct.uip_ip_addr* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.uip_pbuf*, align 8
  %9 = alloca %struct.uip_ip_addr*, align 8
  %10 = alloca %struct.uip_ip_addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.uip_netif*, align 8
  store %struct.uip_pbuf* %0, %struct.uip_pbuf** %8, align 8
  store %struct.uip_ip_addr* %1, %struct.uip_ip_addr** %9, align 8
  store %struct.uip_ip_addr* %2, %struct.uip_ip_addr** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %10, align 8
  %16 = call %struct.uip_netif* @uip_iproute(%struct.uip_ip_addr* %15)
  store %struct.uip_netif* %16, %struct.uip_netif** %14, align 8
  %17 = icmp eq %struct.uip_netif* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @UIP_ERR_RTE, align 4
  store i32 %20, i32* %7, align 4
  br label %30

21:                                               ; preds = %6
  %22 = load %struct.uip_pbuf*, %struct.uip_pbuf** %8, align 8
  %23 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %9, align 8
  %24 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.uip_netif*, %struct.uip_netif** %14, align 8
  %29 = call i32 @uip_ipoutput_if(%struct.uip_pbuf* %22, %struct.uip_ip_addr* %23, %struct.uip_ip_addr* %24, i32 %25, i32 %26, i32 %27, %struct.uip_netif* %28)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %21, %18
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local %struct.uip_netif* @uip_iproute(%struct.uip_ip_addr*) #1

declare dso_local i32 @UIP_ERROR(i8*) #1

declare dso_local i32 @uip_ipoutput_if(%struct.uip_pbuf*, %struct.uip_ip_addr*, %struct.uip_ip_addr*, i32, i32, i32, %struct.uip_netif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
