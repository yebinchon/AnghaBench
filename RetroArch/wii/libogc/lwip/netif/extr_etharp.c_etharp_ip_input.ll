; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/netif/extr_etharp.c_etharp_ip_input.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/netif/extr_etharp.c_etharp_ip_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32, i32 }
%struct.pbuf = type { %struct.ethip_hdr* }
%struct.ethip_hdr = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"netif != NULL\00", align 1
@ETHARP_DEBUG = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"etharp_ip_input: updating ETHARP table.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @etharp_ip_input(%struct.netif* %0, %struct.pbuf* %1) #0 {
  %3 = alloca %struct.netif*, align 8
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca %struct.ethip_hdr*, align 8
  store %struct.netif* %0, %struct.netif** %3, align 8
  store %struct.pbuf* %1, %struct.pbuf** %4, align 8
  %6 = load %struct.netif*, %struct.netif** %3, align 8
  %7 = icmp ne %struct.netif* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %10, i32 0, i32 0
  %12 = load %struct.ethip_hdr*, %struct.ethip_hdr** %11, align 8
  store %struct.ethip_hdr* %12, %struct.ethip_hdr** %5, align 8
  %13 = load %struct.ethip_hdr*, %struct.ethip_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.ethip_hdr, %struct.ethip_hdr* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.netif*, %struct.netif** %3, align 8
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %16, i32 0, i32 1
  %18 = load %struct.netif*, %struct.netif** %3, align 8
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %18, i32 0, i32 0
  %20 = call i32 @ip_addr_netcmp(i32* %15, i32* %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %36

23:                                               ; preds = %2
  %24 = load i32, i32* @ETHARP_DEBUG, align 4
  %25 = load i32, i32* @DBG_TRACE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @LWIP_DEBUGF(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.netif*, %struct.netif** %3, align 8
  %29 = load %struct.ethip_hdr*, %struct.ethip_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.ethip_hdr, %struct.ethip_hdr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.ethip_hdr*, %struct.ethip_hdr** %5, align 8
  %33 = getelementptr inbounds %struct.ethip_hdr, %struct.ethip_hdr* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @update_arp_entry(%struct.netif* %28, i32* %31, i32* %34, i32 0)
  br label %36

36:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

declare dso_local i32 @ip_addr_netcmp(i32*, i32*, i32*) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @update_arp_entry(%struct.netif*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
