; ModuleID = '/home/carl/AnghaBench/Arduino/tools/sdk/lwip/src/core/extr_netif.c_netif_set_down.c'
source_filename = "/home/carl/AnghaBench/Arduino/tools/sdk/lwip/src/core/extr_netif.c_netif_set_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32, i32 }

@NETIF_FLAG_UP = common dso_local global i32 0, align 4
@NETIF_FLAG_ETHARP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netif_set_down(%struct.netif* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  store %struct.netif* %0, %struct.netif** %2, align 8
  %3 = load %struct.netif*, %struct.netif** %2, align 8
  %4 = icmp eq %struct.netif* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = load %struct.netif*, %struct.netif** %2, align 8
  %8 = getelementptr inbounds %struct.netif, %struct.netif* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @NETIF_FLAG_UP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %6
  %14 = load i32, i32* @NETIF_FLAG_UP, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.netif*, %struct.netif** %2, align 8
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.netif*, %struct.netif** %2, align 8
  %21 = call i32 @NETIF_STATUS_CALLBACK(%struct.netif* %20)
  br label %22

22:                                               ; preds = %5, %13, %6
  ret void
}

declare dso_local i32 @NETIF_STATUS_CALLBACK(%struct.netif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
