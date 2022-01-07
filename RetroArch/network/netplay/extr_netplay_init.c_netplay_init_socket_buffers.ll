; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_init.c_netplay_init_socket_buffers.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_init.c_netplay_init_socket_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, %struct.netplay_connection* }
%struct.netplay_connection = type { %struct.TYPE_6__, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64 }

@NETPLAY_MAX_STALL_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @netplay_init_socket_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netplay_init_socket_buffers(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netplay_connection*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @NETPLAY_MAX_STALL_FRAMES, align 4
  %11 = mul nsw i32 %10, 16
  %12 = add nsw i32 %9, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %69, %1
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load %struct.netplay_connection*, %struct.netplay_connection** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %26, i64 %27
  store %struct.netplay_connection* %28, %struct.netplay_connection** %6, align 8
  %29 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %30 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %23
  %34 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %35 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %41 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %40, i32 0, i32 1
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @netplay_resize_socket_buffer(%struct.TYPE_6__* %41, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %47 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %46, i32 0, i32 0
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @netplay_resize_socket_buffer(%struct.TYPE_6__* %47, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45, %39
  store i32 0, i32* %2, align 4
  br label %73

52:                                               ; preds = %45
  br label %67

53:                                               ; preds = %33
  %54 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %55 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %54, i32 0, i32 1
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @netplay_init_socket_buffer(%struct.TYPE_6__* %55, i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %61 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %60, i32 0, i32 0
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @netplay_init_socket_buffer(%struct.TYPE_6__* %61, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59, %53
  store i32 0, i32* %2, align 4
  br label %73

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %52
  br label %68

68:                                               ; preds = %67, %23
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %4, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %4, align 8
  br label %17

72:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %65, %51
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @netplay_resize_socket_buffer(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @netplay_init_socket_buffer(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
