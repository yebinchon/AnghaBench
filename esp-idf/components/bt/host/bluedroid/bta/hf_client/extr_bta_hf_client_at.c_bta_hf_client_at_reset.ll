; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_at.c_bta_hf_client_at_reset.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_at.c_bta_hf_client_at_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32 }

@BTA_HF_CLIENT_AT_INDICATOR_COUNT = common dso_local global i32 0, align 4
@bta_hf_client_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BTA_HF_CLIENT_AT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_hf_client_at_reset() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @bta_hf_client_free_at_resp_timer()
  %3 = call i32 (...) @bta_hf_client_free_at_hold_timer()
  %4 = call i32 (...) @bta_hf_client_clear_queued_at()
  %5 = call i32 (...) @bta_hf_client_at_clear_buf()
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %15, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @BTA_HF_CLIENT_AT_INDICATOR_COUNT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_hf_client_cb, i32 0, i32 0, i32 0, i32 0), align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32 -1, i32* %14, align 4
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %6

18:                                               ; preds = %6
  %19 = load i32, i32* @BTA_HF_CLIENT_AT_NONE, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bta_hf_client_cb, i32 0, i32 0, i32 0, i32 1), align 8
  ret void
}

declare dso_local i32 @bta_hf_client_free_at_resp_timer(...) #1

declare dso_local i32 @bta_hf_client_free_at_hold_timer(...) #1

declare dso_local i32 @bta_hf_client_clear_queued_at(...) #1

declare dso_local i32 @bta_hf_client_at_clear_buf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
