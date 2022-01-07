; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_send_flush_all.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_send_flush_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.netplay_connection* }
%struct.netplay_connection = type { i64, i32, i32, i64 }

@NETPLAY_CONNECTION_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.netplay_connection*)* @netplay_send_flush_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netplay_send_flush_all(%struct.TYPE_4__* %0, %struct.netplay_connection* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.netplay_connection*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netplay_connection*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.netplay_connection* %1, %struct.netplay_connection** %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %48, %2
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %7
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.netplay_connection*, %struct.netplay_connection** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %16, i64 %17
  store %struct.netplay_connection* %18, %struct.netplay_connection** %6, align 8
  %19 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %20 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %21 = icmp eq %struct.netplay_connection* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %48

23:                                               ; preds = %13
  %24 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %25 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %30 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NETPLAY_CONNECTION_CONNECTED, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %36 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %35, i32 0, i32 2
  %37 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %38 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @netplay_send_flush(i32* %36, i32 %39, i32 1)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %45 = call i32 @netplay_hangup(%struct.TYPE_4__* %43, %struct.netplay_connection* %44)
  br label %46

46:                                               ; preds = %42, %34
  br label %47

47:                                               ; preds = %46, %28, %23
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %5, align 8
  br label %7

51:                                               ; preds = %7
  ret void
}

declare dso_local i32 @netplay_send_flush(i32*, i32, i32) #1

declare dso_local i32 @netplay_hangup(%struct.TYPE_4__*, %struct.netplay_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
