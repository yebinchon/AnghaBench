; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_main.c_sdp_conn_originate.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_main.c_sdp_conn_originate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"SDP - no spare CCB for orig\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"SDP - Originate started\0A\00", align 1
@SDP_FLAGS_IS_ORIG = common dso_local global i32 0, align 4
@SDP_STATE_CONN_SETUP = common dso_local global i32 0, align 4
@SDP_PSM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"SDP - Originate failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @sdp_conn_originate(i32* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %6 = call %struct.TYPE_5__* (...) @sdpu_allocate_ccb()
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %4, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @SDP_TRACE_WARNING(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %40

10:                                               ; preds = %1
  %11 = call i32 @SDP_TRACE_EVENT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @SDP_FLAGS_IS_ORIG, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @memcpy(i32* %20, i32* %21, i32 4)
  %23 = load i32, i32* @SDP_STATE_CONN_SETUP, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @SDP_PSM, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @L2CA_ConnectReq(i32 %26, i32* %27)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %10
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %2, align 8
  br label %40

36:                                               ; preds = %10
  %37 = call i32 @SDP_TRACE_WARNING(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = call i32 @sdpu_release_ccb(%struct.TYPE_5__* %38)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %40

40:                                               ; preds = %36, %31, %8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %41
}

declare dso_local %struct.TYPE_5__* @sdpu_allocate_ccb(...) #1

declare dso_local i32 @SDP_TRACE_WARNING(i8*) #1

declare dso_local i32 @SDP_TRACE_EVENT(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @L2CA_ConnectReq(i32, i32*) #1

declare dso_local i32 @sdpu_release_ccb(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
