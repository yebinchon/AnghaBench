; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c_bba_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c_bba_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32, i32, i32*, i32, i32, i32, i32* }
%struct.bba_priv = type { i32, %struct.eth_addr*, i32 }
%struct.eth_addr = type { i32 }

@NETIF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"bba_create()\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"bba_create: out of memory for bba_priv\0A\00", align 1
@wait_exi_queue = common dso_local global i32 0, align 4
@IFNAME0 = common dso_local global i32 0, align 4
@IFNAME1 = common dso_local global i32 0, align 4
@__bba_start_tx = common dso_local global i32 0, align 4
@__bba_link_tx = common dso_local global i32 0, align 4
@NETIF_FLAG_BROADCAST = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@gc_netif = common dso_local global %struct.netif* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bba_priv* @bba_create(%struct.netif* %0) #0 {
  %2 = alloca %struct.bba_priv*, align 8
  %3 = alloca %struct.netif*, align 8
  %4 = alloca %struct.bba_priv*, align 8
  store %struct.netif* %0, %struct.netif** %3, align 8
  store %struct.bba_priv* null, %struct.bba_priv** %4, align 8
  %5 = load i32, i32* @NETIF_DEBUG, align 4
  %6 = call i32 @LWIP_DEBUGF(i32 %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %7 = call i64 @mem_malloc(i32 24)
  %8 = inttoptr i64 %7 to %struct.bba_priv*
  store %struct.bba_priv* %8, %struct.bba_priv** %4, align 8
  %9 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %10 = icmp ne %struct.bba_priv* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @LWIP_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store %struct.bba_priv* null, %struct.bba_priv** %2, align 8
  br label %55

13:                                               ; preds = %1
  %14 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %15 = call i32 @memset(%struct.bba_priv* %14, i32 0, i32 24)
  %16 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %17 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %16, i32 0, i32 2
  %18 = call i32 @LWP_InitQueue(i32* %17)
  %19 = call i32 @LWP_InitQueue(i32* @wait_exi_queue)
  %20 = load i32, i32* @IFNAME0, align 4
  %21 = load %struct.netif*, %struct.netif** %3, align 8
  %22 = getelementptr inbounds %struct.netif, %struct.netif* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @IFNAME1, align 4
  %26 = load %struct.netif*, %struct.netif** %3, align 8
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* @__bba_start_tx, align 4
  %31 = load %struct.netif*, %struct.netif** %3, align 8
  %32 = getelementptr inbounds %struct.netif, %struct.netif* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @__bba_link_tx, align 4
  %34 = load %struct.netif*, %struct.netif** %3, align 8
  %35 = getelementptr inbounds %struct.netif, %struct.netif* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.netif*, %struct.netif** %3, align 8
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %36, i32 0, i32 0
  store i32 1500, i32* %37, align 8
  %38 = load i32, i32* @NETIF_FLAG_BROADCAST, align 4
  %39 = load %struct.netif*, %struct.netif** %3, align 8
  %40 = getelementptr inbounds %struct.netif, %struct.netif* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.netif*, %struct.netif** %3, align 8
  %42 = getelementptr inbounds %struct.netif, %struct.netif* %41, i32 0, i32 1
  store i32 6, i32* %42, align 4
  %43 = load %struct.netif*, %struct.netif** %3, align 8
  %44 = getelementptr inbounds %struct.netif, %struct.netif* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = bitcast i32* %46 to %struct.eth_addr*
  %48 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %49 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %48, i32 0, i32 1
  store %struct.eth_addr* %47, %struct.eth_addr** %49, align 8
  %50 = load i32, i32* @ERR_OK, align 4
  %51 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  %52 = getelementptr inbounds %struct.bba_priv, %struct.bba_priv* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.netif*, %struct.netif** %3, align 8
  store %struct.netif* %53, %struct.netif** @gc_netif, align 8
  %54 = load %struct.bba_priv*, %struct.bba_priv** %4, align 8
  store %struct.bba_priv* %54, %struct.bba_priv** %2, align 8
  br label %55

55:                                               ; preds = %13, %11
  %56 = load %struct.bba_priv*, %struct.bba_priv** %2, align 8
  ret %struct.bba_priv* %56
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i64 @mem_malloc(i32) #1

declare dso_local i32 @LWIP_ERROR(i8*) #1

declare dso_local i32 @memset(%struct.bba_priv*, i32, i32) #1

declare dso_local i32 @LWP_InitQueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
