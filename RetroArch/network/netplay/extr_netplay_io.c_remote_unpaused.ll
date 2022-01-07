; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_remote_unpaused.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_remote_unpaused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, %struct.netplay_connection* }
%struct.netplay_connection = type { i32, i64 }

@NETPLAY_CMD_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.netplay_connection*)* @remote_unpaused to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_unpaused(%struct.TYPE_4__* %0, %struct.netplay_connection* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.netplay_connection*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netplay_connection*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.netplay_connection* %1, %struct.netplay_connection** %4, align 8
  %7 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %8 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %36, %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load %struct.netplay_connection*, %struct.netplay_connection** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %20, i64 %21
  store %struct.netplay_connection* %22, %struct.netplay_connection** %6, align 8
  %23 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %24 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %29 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %39

35:                                               ; preds = %27, %17
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %11

39:                                               ; preds = %32, %11
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %52 = load i32, i32* @NETPLAY_CMD_RESUME, align 4
  %53 = call i32 @netplay_send_raw_cmd_all(%struct.TYPE_4__* %50, %struct.netplay_connection* %51, i32 %52, i32* null, i32 0)
  br label %54

54:                                               ; preds = %49, %44, %39
  ret void
}

declare dso_local i32 @netplay_send_raw_cmd_all(%struct.TYPE_4__*, %struct.netplay_connection*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
