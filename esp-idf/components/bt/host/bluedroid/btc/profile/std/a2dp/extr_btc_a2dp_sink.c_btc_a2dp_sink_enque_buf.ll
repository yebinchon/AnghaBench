; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/a2dp/extr_btc_a2dp_sink.c_btc_a2dp_sink_enque_buf.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/a2dp/extr_btc_a2dp_sink.c_btc_a2dp_sink_enque_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i32 }

@btc_a2dp_sink_state = common dso_local global i64 0, align 8
@BTC_A2DP_SINK_STATE_ON = common dso_local global i64 0, align 8
@a2dp_sink_local_param = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@TRUE = common dso_local global i64 0, align 8
@MAX_OUTPUT_A2DP_SNK_FRAME_QUEUE_SZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Pkt dropped\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"btc_a2dp_sink_enque_buf + \00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"btc_a2dp_sink_enque_buf %d + \0A\00", align 1
@FIXED_QUEUE_MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"btc_a2dp_sink_enque_buf No Buffer left - \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_a2dp_sink_enque_buf(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %5 = load i64, i64* @btc_a2dp_sink_state, align 8
  %6 = load i64, i64* @BTC_A2DP_SINK_STATE_ON, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

9:                                                ; preds = %1
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @a2dp_sink_local_param, i32 0, i32 0, i32 0), align 8
  %11 = load i64, i64* @TRUE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @a2dp_sink_local_param, i32 0, i32 0, i32 1), align 8
  %15 = call i32 @fixed_queue_length(i32 %14)
  store i32 %15, i32* %2, align 4
  br label %77

16:                                               ; preds = %9
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @a2dp_sink_local_param, i32 0, i32 0, i32 1), align 8
  %18 = call i32 @fixed_queue_length(i32 %17)
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @MAX_OUTPUT_A2DP_SNK_FRAME_QUEUE_SZ, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @a2dp_sink_local_param, i32 0, i32 0, i32 1), align 8
  %25 = call i32 @fixed_queue_length(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %77

26:                                               ; preds = %16
  %27 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add i64 8, %30
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %31, %34
  %36 = call i64 @osi_malloc(i64 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %4, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %72

39:                                               ; preds = %26
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add i64 16, %44
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %45, %48
  %50 = call i32 @memcpy(%struct.TYPE_10__* %40, %struct.TYPE_11__* %41, i64 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i64 1
  %53 = bitcast %struct.TYPE_10__* %52 to i32*
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 15
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @APPL_TRACE_VERBOSE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @a2dp_sink_local_param, i32 0, i32 0, i32 1), align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %70 = call i32 @fixed_queue_enqueue(i32 %67, %struct.TYPE_10__* %68, i32 %69)
  %71 = call i32 (...) @btc_a2dp_sink_data_post()
  br label %74

72:                                               ; preds = %26
  %73 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %39
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @a2dp_sink_local_param, i32 0, i32 0, i32 1), align 8
  %76 = call i32 @fixed_queue_length(i32 %75)
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %22, %13, %8
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @fixed_queue_length(i32) #1

declare dso_local i32 @APPL_TRACE_WARNING(i8*) #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*) #1

declare dso_local i64 @osi_malloc(i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @APPL_TRACE_VERBOSE(i8*, i32) #1

declare dso_local i32 @fixed_queue_enqueue(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @btc_a2dp_sink_data_post(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
