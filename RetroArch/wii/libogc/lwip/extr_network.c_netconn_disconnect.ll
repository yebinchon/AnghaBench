; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_disconnect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconn = type { i32, i32 }
%struct.api_msg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.netconn* }

@ERR_VAL = common dso_local global i32 0, align 4
@MEMP_API_MSG = common dso_local global i32 0, align 4
@ERR_MEM = common dso_local global i32 0, align 4
@APIMSG_DISCONNECT = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netconn*)* @netconn_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netconn_disconnect(%struct.netconn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netconn*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.api_msg*, align 8
  store %struct.netconn* %0, %struct.netconn** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.netconn*, %struct.netconn** %3, align 8
  %7 = icmp eq %struct.netconn* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ERR_VAL, align 4
  store i32 %9, i32* %2, align 4
  br label %38

10:                                               ; preds = %1
  %11 = load i32, i32* @MEMP_API_MSG, align 4
  %12 = call %struct.api_msg* @memp_malloc(i32 %11)
  store %struct.api_msg* %12, %struct.api_msg** %5, align 8
  %13 = icmp eq %struct.api_msg* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @ERR_MEM, align 4
  store i32 %15, i32* %2, align 4
  br label %38

16:                                               ; preds = %10
  %17 = load i32, i32* @APIMSG_DISCONNECT, align 4
  %18 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %19 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.netconn*, %struct.netconn** %3, align 8
  %21 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %22 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.netconn* %20, %struct.netconn** %23, align 8
  %24 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %25 = call i32 @apimsg_post(%struct.api_msg* %24)
  %26 = load %struct.netconn*, %struct.netconn** %3, align 8
  %27 = getelementptr inbounds %struct.netconn, %struct.netconn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = ptrtoint i64* %4 to i32
  %30 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %31 = call i32 @MQ_Receive(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @MEMP_API_MSG, align 4
  %33 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %34 = call i32 @memp_free(i32 %32, %struct.api_msg* %33)
  %35 = load %struct.netconn*, %struct.netconn** %3, align 8
  %36 = getelementptr inbounds %struct.netconn, %struct.netconn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %16, %14, %8
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.api_msg* @memp_malloc(i32) #1

declare dso_local i32 @apimsg_post(%struct.api_msg*) #1

declare dso_local i32 @MQ_Receive(i32, i32, i32) #1

declare dso_local i32 @memp_free(i32, %struct.api_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
