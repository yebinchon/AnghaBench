; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_apimsg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_apimsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.api_msg = type { i32 }
%struct.net_msg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.api_msg* }

@MEMP_TCPIP_MSG = common dso_local global i32 0, align 4
@TCPIP_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"net_apimsg: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"net_apimsg: msg out of memory.\0A\00", align 1
@MEMP_API_MSG = common dso_local global i32 0, align 4
@NETMSG_API = common dso_local global i32 0, align 4
@netthread_mbox = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.api_msg*)* @net_apimsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_apimsg(%struct.api_msg* %0) #0 {
  %2 = alloca %struct.api_msg*, align 8
  %3 = alloca %struct.net_msg*, align 8
  store %struct.api_msg* %0, %struct.api_msg** %2, align 8
  %4 = load i32, i32* @MEMP_TCPIP_MSG, align 4
  %5 = call %struct.net_msg* @memp_malloc(i32 %4)
  store %struct.net_msg* %5, %struct.net_msg** %3, align 8
  %6 = load i32, i32* @TCPIP_DEBUG, align 4
  %7 = load %struct.api_msg*, %struct.api_msg** %2, align 8
  %8 = bitcast %struct.api_msg* %7 to i8*
  %9 = call i32 @LWIP_DEBUGF(i32 %6, i8* %8)
  %10 = load %struct.net_msg*, %struct.net_msg** %3, align 8
  %11 = icmp eq %struct.net_msg* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = call i32 @LWIP_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @MEMP_API_MSG, align 4
  %15 = load %struct.api_msg*, %struct.api_msg** %2, align 8
  %16 = call i32 @memp_free(i32 %14, %struct.api_msg* %15)
  br label %29

17:                                               ; preds = %1
  %18 = load i32, i32* @NETMSG_API, align 4
  %19 = load %struct.net_msg*, %struct.net_msg** %3, align 8
  %20 = getelementptr inbounds %struct.net_msg, %struct.net_msg* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.api_msg*, %struct.api_msg** %2, align 8
  %22 = load %struct.net_msg*, %struct.net_msg** %3, align 8
  %23 = getelementptr inbounds %struct.net_msg, %struct.net_msg* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.api_msg* %21, %struct.api_msg** %24, align 8
  %25 = load i32, i32* @netthread_mbox, align 4
  %26 = load %struct.net_msg*, %struct.net_msg** %3, align 8
  %27 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %28 = call i32 @MQ_Send(i32 %25, %struct.net_msg* %26, i32 %27)
  br label %29

29:                                               ; preds = %17, %12
  ret void
}

declare dso_local %struct.net_msg* @memp_malloc(i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @LWIP_ERROR(i8*) #1

declare dso_local i32 @memp_free(i32, %struct.api_msg*) #1

declare dso_local i32 @MQ_Send(i32, %struct.net_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
