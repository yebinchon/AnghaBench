; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_client/extr_bta_hf_client_co.c_bta_hf_dec_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_client/extr_bta_hf_client_co.c_bta_hf_dec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@bta_hf_ct_plc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@bta_hf_client_co_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@HF_SBC_DEC_CONTEXT_DATA_LEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"OI_CODEC_SBC_DecoderReset failed with error code %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bta_hf_dec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_hf_dec_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @sbc_plc_init(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @bta_hf_ct_plc, i32 0, i32 0))
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_hf_client_co_cb, i32 0, i32 0), align 4
  %4 = load i32, i32* @HF_SBC_DEC_CONTEXT_DATA_LEN, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* @FALSE, align 4
  %9 = load i32, i32* @TRUE, align 4
  %10 = call i32 @OI_CODEC_SBC_DecoderReset(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bta_hf_client_co_cb, i32 0, i32 1), i32 %3, i32 %7, i32 1, i32 1, i32 %8, i32 %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @OI_SUCCESS(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @APPL_TRACE_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %0
  ret void
}

declare dso_local i32 @sbc_plc_init(i32*) #1

declare dso_local i32 @OI_CODEC_SBC_DecoderReset(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @OI_SUCCESS(i32) #1

declare dso_local i32 @APPL_TRACE_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
