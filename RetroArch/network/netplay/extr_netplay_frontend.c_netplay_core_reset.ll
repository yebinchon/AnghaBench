; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_core_reset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_core_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.netplay_connection* }
%struct.netplay_connection = type { i64, i32, i32, i32 }

@NETPLAY_CMD_RESET = common dso_local global i32 0, align 4
@NETPLAY_CONNECTION_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @netplay_core_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netplay_core_reset(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca [3 x i32], align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.netplay_connection*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = call i32 @netplay_force_future(%struct.TYPE_5__* %6)
  %8 = load i32, i32* @NETPLAY_CMD_RESET, align 4
  %9 = call i32 @htonl(i32 %8)
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  store i32 %9, i32* %10, align 4
  %11 = call i32 @htonl(i32 4)
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  store i32 %11, i32* %12, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @htonl(i32 %15)
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  store i32 %16, i32* %17, align 4
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %55, %1
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %18
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load %struct.netplay_connection*, %struct.netplay_connection** %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %27, i64 %28
  store %struct.netplay_connection* %29, %struct.netplay_connection** %5, align 8
  %30 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %31 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %36 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NETPLAY_CONNECTION_CONNECTED, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %24
  br label %55

41:                                               ; preds = %34
  %42 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %43 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %42, i32 0, i32 2
  %44 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %45 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %48 = call i32 @netplay_send(i32* %43, i32 %46, i32* %47, i32 12)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %53 = call i32 @netplay_hangup(%struct.TYPE_5__* %51, %struct.netplay_connection* %52)
  br label %54

54:                                               ; preds = %50, %41
  br label %55

55:                                               ; preds = %54, %40
  %56 = load i64, i64* %4, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %4, align 8
  br label %18

58:                                               ; preds = %18
  ret void
}

declare dso_local i32 @netplay_force_future(%struct.TYPE_5__*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @netplay_send(i32*, i32, i32*, i32) #1

declare dso_local i32 @netplay_hangup(%struct.TYPE_5__*, %struct.netplay_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
