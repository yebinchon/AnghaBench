; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_delayed_state_change.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_delayed_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, %struct.netplay_connection* }
%struct.netplay_connection = type { i64, i64, i32, i64 }

@NETPLAY_CONNECTION_DELAYED_DISCONNECT = common dso_local global i64 0, align 8
@NETPLAY_NICK_LEN = common dso_local global i32 0, align 4
@NETPLAY_CONNECTION_NONE = common dso_local global i64 0, align 8
@NETPLAY_CMD_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netplay_delayed_state_change(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.netplay_connection*, align 8
  %6 = alloca [15 x i64], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %90, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %93

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, 1
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %4, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load %struct.netplay_connection*, %struct.netplay_connection** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %19, i64 %21
  store %struct.netplay_connection* %22, %struct.netplay_connection** %5, align 8
  %23 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %24 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %13
  %28 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %29 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NETPLAY_CONNECTION_DELAYED_DISCONNECT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %89

33:                                               ; preds = %27, %13
  %34 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %35 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %89

38:                                               ; preds = %33
  %39 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %40 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %41, %44
  br i1 %45, label %46, label %89

46:                                               ; preds = %38
  %47 = bitcast [15 x i64]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %47, i8 0, i64 120, i1 false)
  %48 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %49 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @htonl(i64 %50)
  %52 = getelementptr inbounds [15 x i64], [15 x i64]* %6, i64 0, i64 0
  store i64 %51, i64* %52, align 16
  %53 = load i64, i64* %4, align 8
  %54 = call i64 @htonl(i64 %53)
  %55 = getelementptr inbounds [15 x i64], [15 x i64]* %6, i64 0, i64 1
  store i64 %54, i64* %55, align 8
  %56 = call i64 @htonl(i64 0)
  %57 = getelementptr inbounds [15 x i64], [15 x i64]* %6, i64 0, i64 2
  store i64 %56, i64* %57, align 16
  %58 = getelementptr inbounds [15 x i64], [15 x i64]* %6, i64 0, i64 0
  %59 = getelementptr inbounds i64, i64* %58, i64 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @memcpy(i64* %59, i32 %62, i32 4)
  %64 = getelementptr inbounds [15 x i64], [15 x i64]* %6, i64 0, i64 0
  %65 = getelementptr inbounds i64, i64* %64, i64 7
  %66 = bitcast i64* %65 to i8*
  %67 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %68 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @NETPLAY_NICK_LEN, align 4
  %71 = call i32 @strncpy(i8* %66, i32 %69, i32 %70)
  %72 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %73 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NETPLAY_CONNECTION_DELAYED_DISCONNECT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %46
  %78 = load i64, i64* @NETPLAY_CONNECTION_NONE, align 8
  %79 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %80 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %77, %46
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %83 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %84 = load i32, i32* @NETPLAY_CMD_MODE, align 4
  %85 = getelementptr inbounds [15 x i64], [15 x i64]* %6, i64 0, i64 0
  %86 = call i32 @netplay_send_raw_cmd_all(%struct.TYPE_4__* %82, %struct.netplay_connection* %83, i32 %84, i64* %85, i32 120)
  %87 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %88 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %81, %38, %33, %27
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %3, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %7

93:                                               ; preds = %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @htonl(i64) #2

declare dso_local i32 @memcpy(i64*, i32, i32) #2

declare dso_local i32 @strncpy(i8*, i32, i32) #2

declare dso_local i32 @netplay_send_raw_cmd_all(%struct.TYPE_4__*, %struct.netplay_connection*, i32, i64*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
