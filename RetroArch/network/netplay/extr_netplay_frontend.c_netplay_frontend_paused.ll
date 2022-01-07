; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_frontend_paused.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_frontend_paused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32*, %struct.netplay_connection* }
%struct.netplay_connection = type { i64, i32, i32, i64, i64 }

@NETPLAY_CONNECTION_CONNECTED = common dso_local global i64 0, align 8
@NETPLAY_CMD_PAUSE = common dso_local global i32 0, align 4
@NETPLAY_NICK_LEN = common dso_local global i32 0, align 4
@NETPLAY_CMD_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @netplay_frontend_paused to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netplay_frontend_paused(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netplay_connection*, align 8
  %8 = alloca %struct.netplay_connection*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %102

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %44, %15
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load %struct.netplay_connection*, %struct.netplay_connection** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %28, i64 %29
  store %struct.netplay_connection* %30, %struct.netplay_connection** %7, align 8
  %31 = load %struct.netplay_connection*, %struct.netplay_connection** %7, align 8
  %32 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = load %struct.netplay_connection*, %struct.netplay_connection** %7, align 8
  %37 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %35, %25
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %19

47:                                               ; preds = %19
  %48 = load i32, i32* %6, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %102

51:                                               ; preds = %47
  store i64 0, i64* %5, align 8
  br label %52

52:                                               ; preds = %99, %51
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %102

58:                                               ; preds = %52
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = load %struct.netplay_connection*, %struct.netplay_connection** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %61, i64 %62
  store %struct.netplay_connection* %63, %struct.netplay_connection** %8, align 8
  %64 = load %struct.netplay_connection*, %struct.netplay_connection** %8, align 8
  %65 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %58
  %69 = load %struct.netplay_connection*, %struct.netplay_connection** %8, align 8
  %70 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @NETPLAY_CONNECTION_CONNECTED, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %68
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = load %struct.netplay_connection*, %struct.netplay_connection** %8, align 8
  %80 = load i32, i32* @NETPLAY_CMD_PAUSE, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @NETPLAY_NICK_LEN, align 4
  %85 = call i32 @netplay_send_raw_cmd(%struct.TYPE_4__* %78, %struct.netplay_connection* %79, i32 %80, i32* %83, i32 %84)
  br label %91

86:                                               ; preds = %74
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = load %struct.netplay_connection*, %struct.netplay_connection** %8, align 8
  %89 = load i32, i32* @NETPLAY_CMD_RESUME, align 4
  %90 = call i32 @netplay_send_raw_cmd(%struct.TYPE_4__* %87, %struct.netplay_connection* %88, i32 %89, i32* null, i32 0)
  br label %91

91:                                               ; preds = %86, %77
  %92 = load %struct.netplay_connection*, %struct.netplay_connection** %8, align 8
  %93 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %92, i32 0, i32 2
  %94 = load %struct.netplay_connection*, %struct.netplay_connection** %8, align 8
  %95 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @netplay_send_flush(i32* %93, i32 %96, i32 1)
  br label %98

98:                                               ; preds = %91, %68, %58
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %5, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %5, align 8
  br label %52

102:                                              ; preds = %14, %50, %52
  ret void
}

declare dso_local i32 @netplay_send_raw_cmd(%struct.TYPE_4__*, %struct.netplay_connection*, i32, i32*, i32) #1

declare dso_local i32 @netplay_send_flush(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
