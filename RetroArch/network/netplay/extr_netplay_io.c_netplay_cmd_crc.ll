; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_cmd_crc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_cmd_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.delta_frame = type { i32, i32 }

@NETPLAY_CONNECTION_CONNECTED = common dso_local global i64 0, align 8
@NETPLAY_CMD_CRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netplay_cmd_crc(%struct.TYPE_5__* %0, %struct.delta_frame* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.delta_frame*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.delta_frame* %1, %struct.delta_frame** %4, align 8
  store i32 1, i32* %6, align 4
  %8 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %9 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @htonl(i32 %10)
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %14 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @htonl(i32 %15)
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %16, i32* %17, align 4
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %61, %2
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %18
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %24
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NETPLAY_CONNECTION_CONNECTED, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %33
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %48
  %50 = load i32, i32* @NETPLAY_CMD_CRC, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %52 = call i64 @netplay_send_raw_cmd(%struct.TYPE_5__* %44, %struct.TYPE_6__* %49, i32 %50, i32* %51, i32 8)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %54, %43
  %58 = phi i1 [ false, %43 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %57, %33, %24
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %18

64:                                               ; preds = %18
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @netplay_send_raw_cmd(%struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
