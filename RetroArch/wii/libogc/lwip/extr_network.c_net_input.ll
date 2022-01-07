; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_input.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32 }
%struct.netif = type { i32 }
%struct.net_msg = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.netif*, %struct.pbuf* }

@MEMP_TCPIP_MSG = common dso_local global i32 0, align 4
@TCPIP_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"net_input: %p %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"net_input: msg out of memory.\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@NETMSG_INPUT = common dso_local global i32 0, align 4
@netthread_mbox = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pbuf*, %struct.netif*)* @net_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_input(%struct.pbuf* %0, %struct.netif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca %struct.netif*, align 8
  %6 = alloca %struct.net_msg*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %4, align 8
  store %struct.netif* %1, %struct.netif** %5, align 8
  %7 = load i32, i32* @MEMP_TCPIP_MSG, align 4
  %8 = call %struct.net_msg* @memp_malloc(i32 %7)
  store %struct.net_msg* %8, %struct.net_msg** %6, align 8
  %9 = load i32, i32* @TCPIP_DEBUG, align 4
  %10 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %11 = load %struct.netif*, %struct.netif** %5, align 8
  %12 = bitcast %struct.netif* %11 to i8*
  %13 = call i32 @LWIP_DEBUGF(i32 %9, i8* %12)
  %14 = load %struct.net_msg*, %struct.net_msg** %6, align 8
  %15 = icmp eq %struct.net_msg* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = call i32 @LWIP_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %19 = call i32 @pbuf_free(%struct.pbuf* %18)
  %20 = load i32, i32* @ERR_MEM, align 4
  store i32 %20, i32* %3, align 4
  br label %40

21:                                               ; preds = %2
  %22 = load i32, i32* @NETMSG_INPUT, align 4
  %23 = load %struct.net_msg*, %struct.net_msg** %6, align 8
  %24 = getelementptr inbounds %struct.net_msg, %struct.net_msg* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %26 = load %struct.net_msg*, %struct.net_msg** %6, align 8
  %27 = getelementptr inbounds %struct.net_msg, %struct.net_msg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store %struct.pbuf* %25, %struct.pbuf** %29, align 8
  %30 = load %struct.netif*, %struct.netif** %5, align 8
  %31 = load %struct.net_msg*, %struct.net_msg** %6, align 8
  %32 = getelementptr inbounds %struct.net_msg, %struct.net_msg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store %struct.netif* %30, %struct.netif** %34, align 8
  %35 = load i32, i32* @netthread_mbox, align 4
  %36 = load %struct.net_msg*, %struct.net_msg** %6, align 8
  %37 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %38 = call i32 @MQ_Send(i32 %35, %struct.net_msg* %36, i32 %37)
  %39 = load i32, i32* @ERR_OK, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %21, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.net_msg* @memp_malloc(i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @LWIP_ERROR(i8*) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

declare dso_local i32 @MQ_Send(i32, %struct.net_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
