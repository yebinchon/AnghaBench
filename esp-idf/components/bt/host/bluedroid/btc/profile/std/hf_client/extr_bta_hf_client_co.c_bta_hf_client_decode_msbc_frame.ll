; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_client/extr_bta_hf_client_co.c_bta_hf_client_decode_msbc_frame.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_client/extr_bta_hf_client_co.c_bta_hf_client_decode_msbc_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@BTM_MSBC_FRAME_DATA_SIZE = common dso_local global i32 0, align 4
@HF_SBC_DEC_RAW_DATA_SIZE = common dso_local global i32 0, align 4
@bta_hf_client_co_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@bta_hf_ct_plc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [32 x i8] c"bad frame, using PLC to fix it.\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Frame decode error: OI_STATUS_INVALID_PARAMETERS\00", align 1
@HF_SBC_DEC_CONTEXT_DATA_LEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"OI_CODEC_SBC_DecoderReset failed with error code %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Frame decode error: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i64)* @bta_hf_client_decode_msbc_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_hf_client_decode_msbc_frame(i32** %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @BTM_MSBC_FRAME_DATA_SIZE, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @HF_SBC_DEC_RAW_DATA_SIZE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 134, i32* %7, align 4
  br label %22

16:                                               ; preds = %3
  %17 = load i32**, i32*** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_hf_client_co_cb, i32 0, i32 2), align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = call i32 @OI_CODEC_SBC_DecodeFrame(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_hf_client_co_cb, i32 0, i32 1), i32** %17, i32* %18, i32* %20, i32* %10)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %16, %15
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %61 [
    i32 129, label %24
    i32 131, label %30
    i32 132, label %30
    i32 133, label %30
    i32 130, label %31
    i32 134, label %31
    i32 128, label %45
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @bta_hf_ct_plc, i32 0, i32 2), align 4
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_hf_client_co_cb, i32 0, i32 2), align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @bta_hf_ct_plc, i32 0, i32 0), align 8
  %29 = call i32 @sbc_plc_good_frame(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @bta_hf_ct_plc, i32 0, i32 1), i32* %27, i64 %28)
  br label %30

30:                                               ; preds = %22, %22, %22, %24
  br label %64

31:                                               ; preds = %22, %22
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @bta_hf_ct_plc, i32 0, i32 2), align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  br label %64

35:                                               ; preds = %31
  %36 = call i32* (...) @sbc_plc_zero_signal_frame()
  store i32* %36, i32** %8, align 8
  %37 = load i32, i32* @HF_SBC_DEC_RAW_DATA_SIZE, align 4
  store i32 %37, i32* %10, align 4
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_hf_client_co_cb, i32 0, i32 2), align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = call i32 @OI_CODEC_SBC_DecodeFrame(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_hf_client_co_cb, i32 0, i32 1), i32** %8, i32* %9, i32* %39, i32* %10)
  store i32 %40, i32* %7, align 4
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_hf_client_co_cb, i32 0, i32 2), align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @bta_hf_ct_plc, i32 0, i32 0), align 8
  %43 = call i32 @sbc_plc_bad_frame(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @bta_hf_ct_plc, i32 0, i32 1), i64 %41, i64 %42)
  %44 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %64

45:                                               ; preds = %22
  %46 = call i32 (i8*, ...) @APPL_TRACE_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_hf_client_co_cb, i32 0, i32 0), align 8
  %48 = load i32, i32* @HF_SBC_DEC_CONTEXT_DATA_LEN, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @FALSE, align 4
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i32 @OI_CODEC_SBC_DecoderReset(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_hf_client_co_cb, i32 0, i32 1), i32 %47, i32 %51, i32 1, i32 1, i32 %52, i32 %53)
  %55 = call i64 @OI_SUCCESS(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i8*, ...) @APPL_TRACE_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %45
  br label %64

61:                                               ; preds = %22
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (i8*, ...) @APPL_TRACE_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %61, %60, %35, %34, %30
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @OI_SUCCESS(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @bta_hf_ct_plc, i32 0, i32 0), align 8
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @btc_hf_client_incoming_data_cb_to_app(i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %64
  ret void
}

declare dso_local i32 @OI_CODEC_SBC_DecodeFrame(i32*, i32**, i32*, i32*, i32*) #1

declare dso_local i32 @sbc_plc_good_frame(i32*, i32*, i64) #1

declare dso_local i32* @sbc_plc_zero_signal_frame(...) #1

declare dso_local i32 @sbc_plc_bad_frame(i32*, i64, i64) #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*) #1

declare dso_local i32 @APPL_TRACE_ERROR(i8*, ...) #1

declare dso_local i64 @OI_SUCCESS(i32) #1

declare dso_local i32 @OI_CODEC_SBC_DecoderReset(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @btc_hf_client_incoming_data_cb_to_app(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
