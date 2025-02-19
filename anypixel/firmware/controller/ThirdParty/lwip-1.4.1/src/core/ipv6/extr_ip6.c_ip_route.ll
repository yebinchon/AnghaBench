; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/ipv6/extr_ip6.c_ip_route.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/ipv6/extr_ip6.c_ip_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32, i32, %struct.netif* }
%struct.ip_addr = type { i32 }

@netif_list = common dso_local global %struct.netif* null, align 8
@netif_default = common dso_local global %struct.netif* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netif* @ip_route(%struct.ip_addr* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  %3 = alloca %struct.ip_addr*, align 8
  %4 = alloca %struct.netif*, align 8
  store %struct.ip_addr* %0, %struct.ip_addr** %3, align 8
  %5 = load %struct.netif*, %struct.netif** @netif_list, align 8
  store %struct.netif* %5, %struct.netif** %4, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.netif*, %struct.netif** %4, align 8
  %8 = icmp ne %struct.netif* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load %struct.ip_addr*, %struct.ip_addr** %3, align 8
  %11 = load %struct.netif*, %struct.netif** %4, align 8
  %12 = getelementptr inbounds %struct.netif, %struct.netif* %11, i32 0, i32 1
  %13 = load %struct.netif*, %struct.netif** %4, align 8
  %14 = getelementptr inbounds %struct.netif, %struct.netif* %13, i32 0, i32 0
  %15 = call i64 @ip_addr_netcmp(%struct.ip_addr* %10, i32* %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load %struct.netif*, %struct.netif** %4, align 8
  store %struct.netif* %18, %struct.netif** %2, align 8
  br label %26

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.netif*, %struct.netif** %4, align 8
  %22 = getelementptr inbounds %struct.netif, %struct.netif* %21, i32 0, i32 2
  %23 = load %struct.netif*, %struct.netif** %22, align 8
  store %struct.netif* %23, %struct.netif** %4, align 8
  br label %6

24:                                               ; preds = %6
  %25 = load %struct.netif*, %struct.netif** @netif_default, align 8
  store %struct.netif* %25, %struct.netif** %2, align 8
  br label %26

26:                                               ; preds = %24, %17
  %27 = load %struct.netif*, %struct.netif** %2, align 8
  ret %struct.netif* %27
}

declare dso_local i64 @ip_addr_netcmp(%struct.ip_addr*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
