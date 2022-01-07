; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_err_tcp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_err_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconn = type { i64, i64, i64, i64, i32 (%struct.netconn*, i32, i32)*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@API_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"api_msg: err_tcp: %d\0A\00", align 1
@SYS_MBOX_NULL = common dso_local global i64 0, align 8
@NETCONN_EVTRCVPLUS = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@SYS_SEM_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @err_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @err_tcp(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.netconn*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.netconn*
  store %struct.netconn* %8, %struct.netconn** %6, align 8
  %9 = load i32, i32* @API_MSG_DEBUG, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @LWIP_DEBUGF(i32 %9, i8* %12)
  %14 = load %struct.netconn*, %struct.netconn** %6, align 8
  %15 = icmp ne %struct.netconn* %14, null
  br i1 %15, label %16, label %94

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.netconn*, %struct.netconn** %6, align 8
  %19 = getelementptr inbounds %struct.netconn, %struct.netconn* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load %struct.netconn*, %struct.netconn** %6, align 8
  %21 = getelementptr inbounds %struct.netconn, %struct.netconn* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.netconn*, %struct.netconn** %6, align 8
  %24 = getelementptr inbounds %struct.netconn, %struct.netconn* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SYS_MBOX_NULL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %16
  %29 = load %struct.netconn*, %struct.netconn** %6, align 8
  %30 = getelementptr inbounds %struct.netconn, %struct.netconn* %29, i32 0, i32 4
  %31 = load i32 (%struct.netconn*, i32, i32)*, i32 (%struct.netconn*, i32, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.netconn*, i32, i32)* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.netconn*, %struct.netconn** %6, align 8
  %35 = getelementptr inbounds %struct.netconn, %struct.netconn* %34, i32 0, i32 4
  %36 = load i32 (%struct.netconn*, i32, i32)*, i32 (%struct.netconn*, i32, i32)** %35, align 8
  %37 = load %struct.netconn*, %struct.netconn** %6, align 8
  %38 = load i32, i32* @NETCONN_EVTRCVPLUS, align 4
  %39 = call i32 %36(%struct.netconn* %37, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %33, %28
  %41 = load %struct.netconn*, %struct.netconn** %6, align 8
  %42 = getelementptr inbounds %struct.netconn, %struct.netconn* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %45 = call i32 @MQ_Send(i64 %43, i32* %5, i32 %44)
  br label %46

46:                                               ; preds = %40, %16
  %47 = load %struct.netconn*, %struct.netconn** %6, align 8
  %48 = getelementptr inbounds %struct.netconn, %struct.netconn* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SYS_MBOX_NULL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.netconn*, %struct.netconn** %6, align 8
  %54 = getelementptr inbounds %struct.netconn, %struct.netconn* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %57 = call i32 @MQ_Send(i64 %55, i32* %5, i32 %56)
  br label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.netconn*, %struct.netconn** %6, align 8
  %60 = getelementptr inbounds %struct.netconn, %struct.netconn* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SYS_MBOX_NULL, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load %struct.netconn*, %struct.netconn** %6, align 8
  %66 = getelementptr inbounds %struct.netconn, %struct.netconn* %65, i32 0, i32 4
  %67 = load i32 (%struct.netconn*, i32, i32)*, i32 (%struct.netconn*, i32, i32)** %66, align 8
  %68 = icmp ne i32 (%struct.netconn*, i32, i32)* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.netconn*, %struct.netconn** %6, align 8
  %71 = getelementptr inbounds %struct.netconn, %struct.netconn* %70, i32 0, i32 4
  %72 = load i32 (%struct.netconn*, i32, i32)*, i32 (%struct.netconn*, i32, i32)** %71, align 8
  %73 = load %struct.netconn*, %struct.netconn** %6, align 8
  %74 = load i32, i32* @NETCONN_EVTRCVPLUS, align 4
  %75 = call i32 %72(%struct.netconn* %73, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %69, %64
  %77 = load %struct.netconn*, %struct.netconn** %6, align 8
  %78 = getelementptr inbounds %struct.netconn, %struct.netconn* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %81 = call i32 @MQ_Send(i64 %79, i32* %5, i32 %80)
  br label %82

82:                                               ; preds = %76, %58
  %83 = load %struct.netconn*, %struct.netconn** %6, align 8
  %84 = getelementptr inbounds %struct.netconn, %struct.netconn* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SYS_SEM_NULL, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.netconn*, %struct.netconn** %6, align 8
  %90 = getelementptr inbounds %struct.netconn, %struct.netconn* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @LWP_SemPost(i64 %91)
  br label %93

93:                                               ; preds = %88, %82
  br label %94

94:                                               ; preds = %93, %2
  ret void
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @MQ_Send(i64, i32*, i32) #1

declare dso_local i32 @LWP_SemPost(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
