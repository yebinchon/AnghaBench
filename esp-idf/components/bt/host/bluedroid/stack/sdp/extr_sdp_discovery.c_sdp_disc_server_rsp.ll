; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_discovery.c_sdp_disc_server_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_discovery.c_sdp_disc_server_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"sdp_disc_server_rsp disc_state:%d\0A\00", align 1
@SDP_DISC_WAIT_HANDLES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SDP_DISC_WAIT_ATTR = common dso_local global i32 0, align 4
@SDP_DISC_WAIT_SEARCH_ATTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"SDP - Unexp. PDU: %d in state: %d\0A\00", align 1
@SDP_GENERIC_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_disc_server_rsp(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %8 = load i64, i64* @TRUE, align 8
  store i64 %8, i64* %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i8*, i32, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = call i32 @btu_stop_timer(i32* %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i64 1
  %18 = bitcast %struct.TYPE_10__* %17 to i32*
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  store i32* %23, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @BE_STREAM_TO_UINT8(i32 %24, i32* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %68 [
    i32 128, label %32
    i32 130, label %44
    i32 129, label %56
  ]

32:                                               ; preds = %2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SDP_DISC_WAIT_HANDLES, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @process_service_search_rsp(%struct.TYPE_9__* %39, i32* %40)
  %42 = load i64, i64* @FALSE, align 8
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %38, %32
  br label %68

44:                                               ; preds = %2
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SDP_DISC_WAIT_ATTR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @process_service_attr_rsp(%struct.TYPE_9__* %51, i32* %52)
  %54 = load i64, i64* @FALSE, align 8
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %50, %44
  br label %68

56:                                               ; preds = %2
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SDP_DISC_WAIT_SEARCH_ATTR, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @process_service_search_attr_rsp(%struct.TYPE_9__* %63, i32* %64)
  %66 = load i64, i64* @FALSE, align 8
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %62, %56
  br label %68

68:                                               ; preds = %2, %67, %55, %43
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, i32, ...) @SDP_TRACE_WARNING(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = load i32, i32* @SDP_GENERIC_ERROR, align 4
  %79 = call i32 @sdp_disconnect(%struct.TYPE_9__* %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %68
  ret void
}

declare dso_local i32 @SDP_TRACE_WARNING(i8*, i32, ...) #1

declare dso_local i32 @btu_stop_timer(i32*) #1

declare dso_local i32 @BE_STREAM_TO_UINT8(i32, i32*) #1

declare dso_local i32 @process_service_search_rsp(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @process_service_attr_rsp(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @process_service_search_attr_rsp(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @sdp_disconnect(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
