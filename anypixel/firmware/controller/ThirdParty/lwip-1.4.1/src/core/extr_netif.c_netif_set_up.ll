; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/extr_netif.c_netif_set_up.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/extr_netif.c_netif_set_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32, i32 }

@NETIF_FLAG_UP = common dso_local global i32 0, align 4
@NETIF_FLAG_LINK_UP = common dso_local global i32 0, align 4
@NETIF_FLAG_ETHARP = common dso_local global i32 0, align 4
@NETIF_FLAG_IGMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netif_set_up(%struct.netif* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  store %struct.netif* %0, %struct.netif** %2, align 8
  %3 = load %struct.netif*, %struct.netif** %2, align 8
  %4 = getelementptr inbounds %struct.netif, %struct.netif* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NETIF_FLAG_UP, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @NETIF_FLAG_UP, align 4
  %11 = load %struct.netif*, %struct.netif** %2, align 8
  %12 = getelementptr inbounds %struct.netif, %struct.netif* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.netif*, %struct.netif** %2, align 8
  %16 = call i32 @NETIF_STATUS_CALLBACK(%struct.netif* %15)
  %17 = load %struct.netif*, %struct.netif** %2, align 8
  %18 = getelementptr inbounds %struct.netif, %struct.netif* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NETIF_FLAG_LINK_UP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23, %9
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @NETIF_STATUS_CALLBACK(%struct.netif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
