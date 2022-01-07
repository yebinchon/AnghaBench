; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_client/extr_btc_hf_client.c_btc_hf_client_request_last_voice_tag_number.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_client/extr_btc_hf_client.c_btc_hf_client_request_last_voice_tag_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@hf_client_local_param = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@BTA_HF_CLIENT_PEER_VTAG = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_AT_CMD_BINP = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@BT_STATUS_UNSUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @btc_hf_client_request_last_voice_tag_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc_hf_client_request_last_voice_tag_number() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @CHECK_HF_CLIENT_SLC_CONNECTED()
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hf_client_local_param, i32 0, i32 0, i32 0), align 4
  %4 = load i32, i32* @BTA_HF_CLIENT_PEER_VTAG, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hf_client_local_param, i32 0, i32 0, i32 1), align 4
  %9 = load i32, i32* @BTA_HF_CLIENT_AT_CMD_BINP, align 4
  %10 = call i32 @BTA_HfClientSendAT(i32 %8, i32 %9, i32 1, i32 0, i32* null)
  %11 = load i32, i32* @BT_STATUS_SUCCESS, align 4
  store i32 %11, i32* %1, align 4
  br label %14

12:                                               ; preds = %0
  %13 = load i32, i32* @BT_STATUS_UNSUPPORTED, align 4
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %12, %7
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @CHECK_HF_CLIENT_SLC_CONNECTED(...) #1

declare dso_local i32 @BTA_HfClientSendAT(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
