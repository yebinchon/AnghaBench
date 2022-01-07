; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_main.c_sdp_disconnect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_main.c_sdp_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64, i64, i32, i32 (i64, i32)*, i32 (i64)*, i64, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"SDP - disconnect  CID: 0x%x\0A\00", align 1
@SDP_STATE_CONN_SETUP = common dso_local global i64 0, align 8
@SDP_FLAGS_IS_ORIG = common dso_local global i32 0, align 4
@SDP_NO_RECS_MATCH = common dso_local global i64 0, align 8
@SDP_STATE_CONNECTED = common dso_local global i64 0, align 8
@SDP_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_disconnect(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @SDP_TRACE_EVENT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @L2CA_DisconnectReq(i64 %16)
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 7
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %13, %2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SDP_STATE_CONN_SETUP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %21
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 6
  %30 = load i32 (i64)*, i32 (i64)** %29, align 8
  %31 = icmp ne i32 (i64)* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 6
  %35 = load i32 (i64)*, i32 (i64)** %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i32 %35(i64 %36)
  br label %53

38:                                               ; preds = %27
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 5
  %41 = load i32 (i64, i32)*, i32 (i64, i32)** %40, align 8
  %42 = icmp ne i32 (i64, i32)* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 5
  %46 = load i32 (i64, i32)*, i32 (i64, i32)** %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %46(i64 %47, i32 %50)
  br label %52

52:                                               ; preds = %43, %38
  br label %53

53:                                               ; preds = %52, %32
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = call i32 @sdpu_release_ccb(%struct.TYPE_10__* %54)
  br label %56

56:                                               ; preds = %53, %21
  ret void
}

declare dso_local i32 @SDP_TRACE_EVENT(i8*, i64) #1

declare dso_local i32 @L2CA_DisconnectReq(i64) #1

declare dso_local i32 @sdpu_release_ccb(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
