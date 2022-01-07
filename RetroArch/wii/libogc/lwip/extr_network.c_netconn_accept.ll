; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_accept.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconn = type { i32 (%struct.netconn*, i32, i32)*, i32 }

@API_LIB_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"netconn_accept(%p)\0A\00", align 1
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@NETCONN_EVTRCVMINUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netconn* (%struct.netconn*)* @netconn_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netconn* @netconn_accept(%struct.netconn* %0) #0 {
  %2 = alloca %struct.netconn*, align 8
  %3 = alloca %struct.netconn*, align 8
  %4 = alloca %struct.netconn*, align 8
  store %struct.netconn* %0, %struct.netconn** %3, align 8
  %5 = load %struct.netconn*, %struct.netconn** %3, align 8
  %6 = icmp eq %struct.netconn* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.netconn* null, %struct.netconn** %2, align 8
  br label %32

8:                                                ; preds = %1
  %9 = load i32, i32* @API_LIB_DEBUG, align 4
  %10 = load %struct.netconn*, %struct.netconn** %3, align 8
  %11 = bitcast %struct.netconn* %10 to i8*
  %12 = call i32 @LWIP_DEBUGF(i32 %9, i8* %11)
  %13 = load %struct.netconn*, %struct.netconn** %3, align 8
  %14 = getelementptr inbounds %struct.netconn, %struct.netconn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = ptrtoint %struct.netconn** %4 to i32
  %17 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %18 = call i32 @MQ_Receive(i32 %15, i32 %16, i32 %17)
  %19 = load %struct.netconn*, %struct.netconn** %3, align 8
  %20 = getelementptr inbounds %struct.netconn, %struct.netconn* %19, i32 0, i32 0
  %21 = load i32 (%struct.netconn*, i32, i32)*, i32 (%struct.netconn*, i32, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.netconn*, i32, i32)* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %8
  %24 = load %struct.netconn*, %struct.netconn** %3, align 8
  %25 = getelementptr inbounds %struct.netconn, %struct.netconn* %24, i32 0, i32 0
  %26 = load i32 (%struct.netconn*, i32, i32)*, i32 (%struct.netconn*, i32, i32)** %25, align 8
  %27 = load %struct.netconn*, %struct.netconn** %3, align 8
  %28 = load i32, i32* @NETCONN_EVTRCVMINUS, align 4
  %29 = call i32 %26(%struct.netconn* %27, i32 %28, i32 0)
  br label %30

30:                                               ; preds = %23, %8
  %31 = load %struct.netconn*, %struct.netconn** %4, align 8
  store %struct.netconn* %31, %struct.netconn** %2, align 8
  br label %32

32:                                               ; preds = %30, %7
  %33 = load %struct.netconn*, %struct.netconn** %2, align 8
  ret %struct.netconn* %33
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @MQ_Receive(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
