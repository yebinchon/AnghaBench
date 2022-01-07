; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c_uip_bba_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_bba.c_uip_bba_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_netif = type { i32 }

@UIP_ERR_IF = common dso_local global i64 0, align 8
@UIP_NETIF_FLAG_LINK_UP = common dso_local global i32 0, align 4
@bba_recv_pbufs = common dso_local global i32* null, align 8
@bba_arp_tmr = common dso_local global i32 0, align 4
@UIP_ERR_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uip_bba_init(%struct.uip_netif* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.uip_netif*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.uip_netif* %0, %struct.uip_netif** %3, align 8
  %6 = load %struct.uip_netif*, %struct.uip_netif** %3, align 8
  %7 = call i64 @bba_probe(%struct.uip_netif* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %2, align 8
  br label %47

12:                                               ; preds = %1
  %13 = call i64 (...) @bba_dochallengeresponse()
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  store i64 %17, i64* %2, align 8
  br label %47

18:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %29, %18
  %20 = call i32 @udelay(i32 500)
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19
  %24 = call i64 (...) @__bba_getlink_state_async()
  store i64 %24, i64* %4, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 10000
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %19, label %31

31:                                               ; preds = %29
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* @UIP_ERR_IF, align 8
  store i64 %35, i64* %2, align 8
  br label %47

36:                                               ; preds = %31
  %37 = load i32, i32* @UIP_NETIF_FLAG_LINK_UP, align 4
  %38 = load %struct.uip_netif*, %struct.uip_netif** %3, align 8
  %39 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.uip_netif*, %struct.uip_netif** %3, align 8
  %43 = call i32 @uip_netif_setup(%struct.uip_netif* %42)
  %44 = call i32 (...) @uip_arp_init()
  store i32* null, i32** @bba_recv_pbufs, align 8
  %45 = call i32 (...) @gettime()
  store i32 %45, i32* @bba_arp_tmr, align 4
  %46 = load i64, i64* @UIP_ERR_OK, align 8
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %36, %34, %16, %10
  %48 = load i64, i64* %2, align 8
  ret i64 %48
}

declare dso_local i64 @bba_probe(%struct.uip_netif*) #1

declare dso_local i64 @bba_dochallengeresponse(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @__bba_getlink_state_async(...) #1

declare dso_local i32 @uip_netif_setup(%struct.uip_netif*) #1

declare dso_local i32 @uip_arp_init(...) #1

declare dso_local i32 @gettime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
