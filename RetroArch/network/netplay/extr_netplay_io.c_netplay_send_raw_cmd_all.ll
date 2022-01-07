; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_send_raw_cmd_all.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_send_raw_cmd_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.netplay_connection* }
%struct.netplay_connection = type { i64, i64 }

@NETPLAY_CONNECTION_CONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netplay_send_raw_cmd_all(%struct.TYPE_5__* %0, %struct.netplay_connection* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.netplay_connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.netplay_connection*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.netplay_connection* %1, %struct.netplay_connection** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %13

13:                                               ; preds = %54, %5
  %14 = load i64, i64* %11, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %13
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.netplay_connection*, %struct.netplay_connection** %21, align 8
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %22, i64 %23
  store %struct.netplay_connection* %24, %struct.netplay_connection** %12, align 8
  %25 = load %struct.netplay_connection*, %struct.netplay_connection** %12, align 8
  %26 = load %struct.netplay_connection*, %struct.netplay_connection** %7, align 8
  %27 = icmp eq %struct.netplay_connection* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %54

29:                                               ; preds = %19
  %30 = load %struct.netplay_connection*, %struct.netplay_connection** %12, align 8
  %31 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load %struct.netplay_connection*, %struct.netplay_connection** %12, align 8
  %36 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NETPLAY_CONNECTION_CONNECTED, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = load %struct.netplay_connection*, %struct.netplay_connection** %12, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @netplay_send_raw_cmd(%struct.TYPE_5__* %41, %struct.netplay_connection* %42, i32 %43, i8* %44, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %40
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = load %struct.netplay_connection*, %struct.netplay_connection** %12, align 8
  %51 = call i32 @netplay_hangup(%struct.TYPE_5__* %49, %struct.netplay_connection* %50)
  br label %52

52:                                               ; preds = %48, %40
  br label %53

53:                                               ; preds = %52, %34, %29
  br label %54

54:                                               ; preds = %53, %28
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %11, align 8
  br label %13

57:                                               ; preds = %13
  ret void
}

declare dso_local i32 @netplay_send_raw_cmd(%struct.TYPE_5__*, %struct.netplay_connection*, i32, i8*, i64) #1

declare dso_local i32 @netplay_hangup(%struct.TYPE_5__*, %struct.netplay_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
