; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_connected.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_do_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32 }
%struct.netconn = type { i64, i32, i64 }

@ERR_VAL = common dso_local global i64 0, align 8
@NETCONN_TCP = common dso_local global i64 0, align 8
@ERR_OK = common dso_local global i64 0, align 8
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.tcp_pcb*, i64)* @do_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_connected(i8* %0, %struct.tcp_pcb* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tcp_pcb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netconn*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.netconn*
  store %struct.netconn* %11, %struct.netconn** %9, align 8
  %12 = load %struct.netconn*, %struct.netconn** %9, align 8
  %13 = icmp ne %struct.netconn* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @ERR_VAL, align 8
  store i64 %15, i64* %4, align 8
  br label %39

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.netconn*, %struct.netconn** %9, align 8
  %19 = getelementptr inbounds %struct.netconn, %struct.netconn* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load %struct.netconn*, %struct.netconn** %9, align 8
  %21 = getelementptr inbounds %struct.netconn, %struct.netconn* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NETCONN_TCP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @ERR_OK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.netconn*, %struct.netconn** %9, align 8
  %31 = call i32 @setuptcp(%struct.netconn* %30)
  br label %32

32:                                               ; preds = %29, %25, %16
  %33 = load %struct.netconn*, %struct.netconn** %9, align 8
  %34 = getelementptr inbounds %struct.netconn, %struct.netconn* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %37 = call i32 @MQ_Send(i32 %35, i32* %8, i32 %36)
  %38 = load i64, i64* @ERR_OK, align 8
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %32, %14
  %40 = load i64, i64* %4, align 8
  ret i64 %40
}

declare dso_local i32 @setuptcp(%struct.netconn*) #1

declare dso_local i32 @MQ_Send(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
