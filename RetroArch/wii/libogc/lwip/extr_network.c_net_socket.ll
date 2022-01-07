; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_socket.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconn = type { i32 }

@SOCKETS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"net_socket(SOCK_RAW)\0A\00", align 1
@NETCONN_RAW = common dso_local global i32 0, align 4
@evt_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"net_socket(SOCK_DGRAM)\0A\00", align 1
@NETCONN_UDP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"net_socket(SOCK_STREAM)\0A\00", align 1
@NETCONN_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_socket(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netconn*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %30 [
    i32 129, label %11
    i32 130, label %18
    i32 128, label %24
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @SOCKETS_DEBUG, align 4
  %13 = call i32 @LWIP_DEBUGF(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @NETCONN_RAW, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @evt_callback, align 4
  %17 = call %struct.netconn* @netconn_new_with_proto_and_callback(i32 %14, i32 %15, i32 %16)
  store %struct.netconn* %17, %struct.netconn** %9, align 8
  br label %31

18:                                               ; preds = %3
  %19 = load i32, i32* @SOCKETS_DEBUG, align 4
  %20 = call i32 @LWIP_DEBUGF(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @NETCONN_UDP, align 4
  %22 = load i32, i32* @evt_callback, align 4
  %23 = call %struct.netconn* @netconn_new_with_callback(i32 %21, i32 %22)
  store %struct.netconn* %23, %struct.netconn** %9, align 8
  br label %31

24:                                               ; preds = %3
  %25 = load i32, i32* @SOCKETS_DEBUG, align 4
  %26 = call i32 @LWIP_DEBUGF(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @NETCONN_TCP, align 4
  %28 = load i32, i32* @evt_callback, align 4
  %29 = call %struct.netconn* @netconn_new_with_callback(i32 %27, i32 %28)
  store %struct.netconn* %29, %struct.netconn** %9, align 8
  br label %31

30:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %48

31:                                               ; preds = %24, %18, %11
  %32 = load %struct.netconn*, %struct.netconn** %9, align 8
  %33 = icmp ne %struct.netconn* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %48

35:                                               ; preds = %31
  %36 = load %struct.netconn*, %struct.netconn** %9, align 8
  %37 = call i32 @alloc_socket(%struct.netconn* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.netconn*, %struct.netconn** %9, align 8
  %42 = call i32 @netconn_delete(%struct.netconn* %41)
  store i32 -1, i32* %4, align 4
  br label %48

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.netconn*, %struct.netconn** %9, align 8
  %46 = getelementptr inbounds %struct.netconn, %struct.netconn* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %43, %40, %34, %30
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local %struct.netconn* @netconn_new_with_proto_and_callback(i32, i32, i32) #1

declare dso_local %struct.netconn* @netconn_new_with_callback(i32, i32) #1

declare dso_local i32 @alloc_socket(%struct.netconn*) #1

declare dso_local i32 @netconn_delete(%struct.netconn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
