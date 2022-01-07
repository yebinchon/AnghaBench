; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_msg = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { void (i8*)*, i8* }

@MEMP_TCPIP_MSG = common dso_local global i32 0, align 4
@TCPIP_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"net_callback: %p(%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"net_apimsg: msg out of memory.\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@NETMSG_CALLBACK = common dso_local global i32 0, align 4
@netthread_mbox = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (void (i8*)*, i8*)* @net_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_callback(void (i8*)* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca void (i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_msg*, align 8
  store void (i8*)* %0, void (i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @MEMP_TCPIP_MSG, align 4
  %8 = call %struct.net_msg* @memp_malloc(i32 %7)
  store %struct.net_msg* %8, %struct.net_msg** %6, align 8
  %9 = load i32, i32* @TCPIP_DEBUG, align 4
  %10 = load void (i8*)*, void (i8*)** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @LWIP_DEBUGF(i32 %9, i8* %11)
  %13 = load %struct.net_msg*, %struct.net_msg** %6, align 8
  %14 = icmp eq %struct.net_msg* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @LWIP_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @ERR_MEM, align 4
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load i32, i32* @NETMSG_CALLBACK, align 4
  %20 = load %struct.net_msg*, %struct.net_msg** %6, align 8
  %21 = getelementptr inbounds %struct.net_msg, %struct.net_msg* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load void (i8*)*, void (i8*)** %4, align 8
  %23 = load %struct.net_msg*, %struct.net_msg** %6, align 8
  %24 = getelementptr inbounds %struct.net_msg, %struct.net_msg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store void (i8*)* %22, void (i8*)** %26, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.net_msg*, %struct.net_msg** %6, align 8
  %29 = getelementptr inbounds %struct.net_msg, %struct.net_msg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i8* %27, i8** %31, align 8
  %32 = load i32, i32* @netthread_mbox, align 4
  %33 = load %struct.net_msg*, %struct.net_msg** %6, align 8
  %34 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %35 = call i32 @MQ_Send(i32 %32, %struct.net_msg* %33, i32 %34)
  %36 = load i32, i32* @ERR_OK, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %18, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.net_msg* @memp_malloc(i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @LWIP_ERROR(i8*) #1

declare dso_local i32 @MQ_Send(i32, %struct.net_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
