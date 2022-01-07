; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_thread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_msg = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32 (i32)* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@ARP_TMR_INTERVAL = common dso_local global i32 0, align 4
@TB_MSPERSEC = common dso_local global i32 0, align 4
@net_arp_ticks = common dso_local global i8* null, align 8
@arp_time_cntrl = common dso_local global i32 0, align 4
@__arp_timer = common dso_local global i32 0, align 4
@ARP_TIMER_ID = common dso_local global i32 0, align 4
@TCP_TMR_INTERVAL = common dso_local global i32 0, align 4
@TB_NSPERMS = common dso_local global i32 0, align 4
@net_tcp_ticks = common dso_local global i8* null, align 8
@tcp_timer_cntrl = common dso_local global i32 0, align 4
@__tcp_timer = common dso_local global i32 0, align 4
@TCP_TIMER_ID = common dso_local global i32 0, align 4
@TCPIP_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"net_thread(%p)\0A\00", align 1
@netthread_mbox = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"net_thread: API message %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"net_thread: IP packet %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"net_thread: CALLBACK %p\0A\00", align 1
@MEMP_TCPIP_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @net_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @net_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.net_msg*, align 8
  %4 = alloca %struct.timespec, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i32
  store i32 %7, i32* %5, align 4
  %8 = call i32 (...) @etharp_init()
  %9 = call i32 (...) @ip_init()
  %10 = call i32 (...) @udp_init()
  %11 = call i32 (...) @tcp_init()
  %12 = load i32, i32* @ARP_TMR_INTERVAL, align 4
  %13 = load i32, i32* @TB_MSPERSEC, align 4
  %14 = sdiv i32 %12, %13
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = call i8* @__lwp_wd_calc_ticks(%struct.timespec* %4)
  store i8* %17, i8** @net_arp_ticks, align 8
  %18 = load i32, i32* @__arp_timer, align 4
  %19 = load i32, i32* @ARP_TIMER_ID, align 4
  %20 = call i32 @__lwp_wd_initialize(i32* @arp_time_cntrl, i32 %18, i32 %19, i32* null)
  %21 = load i8*, i8** @net_arp_ticks, align 8
  %22 = call i32 @__lwp_wd_insert_ticks(i32* @arp_time_cntrl, i8* %21)
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* @TCP_TMR_INTERVAL, align 4
  %25 = load i32, i32* @TB_NSPERMS, align 4
  %26 = mul nsw i32 %24, %25
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = call i8* @__lwp_wd_calc_ticks(%struct.timespec* %4)
  store i8* %28, i8** @net_tcp_ticks, align 8
  %29 = load i32, i32* @__tcp_timer, align 4
  %30 = load i32, i32* @TCP_TIMER_ID, align 4
  %31 = call i32 @__lwp_wd_initialize(i32* @tcp_timer_cntrl, i32 %29, i32 %30, i32* null)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @LWP_SemPost(i32 %32)
  %34 = load i32, i32* @TCPIP_DEBUG, align 4
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @LWIP_DEBUGF(i32 %34, i8* %35)
  br label %37

37:                                               ; preds = %1, %88
  %38 = load i32, i32* @netthread_mbox, align 4
  %39 = ptrtoint %struct.net_msg** %3 to i32
  %40 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %41 = call i32 @MQ_Receive(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.net_msg*, %struct.net_msg** %3, align 8
  %43 = getelementptr inbounds %struct.net_msg, %struct.net_msg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %87 [
    i32 130, label %45
    i32 128, label %55
    i32 129, label %71
  ]

45:                                               ; preds = %37
  %46 = load i32, i32* @TCPIP_DEBUG, align 4
  %47 = load %struct.net_msg*, %struct.net_msg** %3, align 8
  %48 = bitcast %struct.net_msg* %47 to i8*
  %49 = call i32 @LWIP_DEBUGF(i32 %46, i8* %48)
  %50 = load %struct.net_msg*, %struct.net_msg** %3, align 8
  %51 = getelementptr inbounds %struct.net_msg, %struct.net_msg* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @apimsg_input(i32 %53)
  br label %88

55:                                               ; preds = %37
  %56 = load i32, i32* @TCPIP_DEBUG, align 4
  %57 = load %struct.net_msg*, %struct.net_msg** %3, align 8
  %58 = bitcast %struct.net_msg* %57 to i8*
  %59 = call i32 @LWIP_DEBUGF(i32 %56, i8* %58)
  %60 = load %struct.net_msg*, %struct.net_msg** %3, align 8
  %61 = getelementptr inbounds %struct.net_msg, %struct.net_msg* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.net_msg*, %struct.net_msg** %3, align 8
  %66 = getelementptr inbounds %struct.net_msg, %struct.net_msg* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @bba_process(i32 %64, i32 %69)
  br label %88

71:                                               ; preds = %37
  %72 = load i32, i32* @TCPIP_DEBUG, align 4
  %73 = load %struct.net_msg*, %struct.net_msg** %3, align 8
  %74 = bitcast %struct.net_msg* %73 to i8*
  %75 = call i32 @LWIP_DEBUGF(i32 %72, i8* %74)
  %76 = load %struct.net_msg*, %struct.net_msg** %3, align 8
  %77 = getelementptr inbounds %struct.net_msg, %struct.net_msg* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32 (i32)*, i32 (i32)** %79, align 8
  %81 = load %struct.net_msg*, %struct.net_msg** %3, align 8
  %82 = getelementptr inbounds %struct.net_msg, %struct.net_msg* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 %80(i32 %85)
  br label %88

87:                                               ; preds = %37
  br label %88

88:                                               ; preds = %87, %71, %55, %45
  %89 = load i32, i32* @MEMP_TCPIP_MSG, align 4
  %90 = load %struct.net_msg*, %struct.net_msg** %3, align 8
  %91 = call i32 @memp_free(i32 %89, %struct.net_msg* %90)
  br label %37
}

declare dso_local i32 @etharp_init(...) #1

declare dso_local i32 @ip_init(...) #1

declare dso_local i32 @udp_init(...) #1

declare dso_local i32 @tcp_init(...) #1

declare dso_local i8* @__lwp_wd_calc_ticks(%struct.timespec*) #1

declare dso_local i32 @__lwp_wd_initialize(i32*, i32, i32, i32*) #1

declare dso_local i32 @__lwp_wd_insert_ticks(i32*, i8*) #1

declare dso_local i32 @LWP_SemPost(i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @MQ_Receive(i32, i32, i32) #1

declare dso_local i32 @apimsg_input(i32) #1

declare dso_local i32 @bba_process(i32, i32) #1

declare dso_local i32 @memp_free(i32, %struct.net_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
