; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/a2dp/extr_btc_a2dp_sink.c_btc_a2dp_sink_handle_inc_media.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/a2dp/extr_btc_a2dp_sink.c_btc_a2dp_sink_handle_inc_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i64 }

@a2dp_sink_local_param = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@AVDT_TSEP_SNK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c" State Changed happened in this tick \00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Number of sbc frames %d, frame_len %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Decoding failure: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @btc_a2dp_sink_handle_inc_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc_a2dp_sink_handle_inc_media(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 1
  %13 = bitcast %struct.TYPE_6__* %12 to i32*
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32* %19, i32** %3, align 8
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @a2dp_sink_local_param, i32 0, i32 0), align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 1
  store i64 %27, i64* %10, align 8
  store i64 8, i64* %6, align 8
  %28 = call i64 (...) @btc_av_get_peer_sep()
  %29 = load i64, i64* @AVDT_TSEP_SNK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @a2dp_sink_local_param, i32 0, i32 2, i32 0), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %1
  %35 = call i32 (i8*, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %98

36:                                               ; preds = %31
  %37 = call i32 (...) @btc_a2dp_control_get_datachnl_stat()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %98

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = load i64, i64* %10, align 8
  %43 = call i32 (i8*, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %41, i64 %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %89, %40
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i64, i64* %10, align 8
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i1 [ false, %44 ], [ %50, %48 ]
  br i1 %52, label %53, label %92

53:                                               ; preds = %51
  %54 = load i64, i64* %6, align 8
  store i64 %54, i64* %5, align 8
  %55 = bitcast i64* %10 to i32*
  %56 = load i32*, i32** %7, align 8
  %57 = bitcast i64* %5 to i32*
  %58 = call i32 @OI_CODEC_SBC_DecodeFrame(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @a2dp_sink_local_param, i32 0, i32 1), i32** %3, i32* %55, i32* %56, i32* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @OI_SUCCESS(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @APPL_TRACE_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %92

65:                                               ; preds = %53
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = sub nsw i64 %67, %66
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %5, align 8
  %70 = sdiv i64 %69, 2
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 %70
  store i32* %72, i32** %7, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %75, 1
  %77 = load i64, i64* %10, align 8
  %78 = sub nsw i64 %76, %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %78
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 8
  %85 = load i64, i64* %10, align 8
  %86 = add nsw i64 %85, 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %65
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %44

92:                                               ; preds = %62, %51
  %93 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @a2dp_sink_local_param, i32 0, i32 0), align 8
  %94 = load i64, i64* %6, align 8
  %95 = sub i64 8, %94
  %96 = trunc i64 %95 to i32
  %97 = call i32 @btc_a2d_data_cb_to_app(i32* %93, i32 %96)
  br label %98

98:                                               ; preds = %92, %39, %34
  ret void
}

declare dso_local i64 @btc_av_get_peer_sep(...) #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, ...) #1

declare dso_local i32 @btc_a2dp_control_get_datachnl_stat(...) #1

declare dso_local i32 @OI_CODEC_SBC_DecodeFrame(i32*, i32**, i32*, i32*, i32*) #1

declare dso_local i32 @OI_SUCCESS(i32) #1

declare dso_local i32 @APPL_TRACE_ERROR(i8*, i32) #1

declare dso_local i32 @btc_a2d_data_cb_to_app(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
