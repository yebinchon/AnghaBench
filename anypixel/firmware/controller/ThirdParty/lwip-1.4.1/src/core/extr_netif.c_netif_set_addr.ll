; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/extr_netif.c_netif_set_addr.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/extr_netif.c_netif_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netif_set_addr(%struct.netif* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.netif*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.netif* %0, %struct.netif** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.netif*, %struct.netif** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @netif_set_ipaddr(%struct.netif* %9, i32* %10)
  %12 = load %struct.netif*, %struct.netif** %5, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @netif_set_netmask(%struct.netif* %12, i32* %13)
  %15 = load %struct.netif*, %struct.netif** %5, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @netif_set_gw(%struct.netif* %15, i32* %16)
  ret void
}

declare dso_local i32 @netif_set_ipaddr(%struct.netif*, i32*) #1

declare dso_local i32 @netif_set_netmask(%struct.netif*, i32*) #1

declare dso_local i32 @netif_set_gw(%struct.netif*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
