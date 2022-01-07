; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_client/extr_btc_hf_client.c_btc_hf_client_connect_audio.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_client/extr_btc_hf_client.c_btc_hf_client_connect_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@hf_client_local_param = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@BTA_HF_CLIENT_PEER_CODEC = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_AT_CMD_BCC = common dso_local global i32 0, align 4
@ESP_HF_CLIENT_AUDIO_STATE_CONNECTING = common dso_local global i32 0, align 4
@ESP_HF_CLIENT_AUDIO_STATE_EVT = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@BT_STATUS_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_hf_client_connect_audio(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__, align 4
  store i32* %0, i32** %3, align 8
  %5 = call i32 (...) @CHECK_HF_CLIENT_SLC_CONNECTED()
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @is_connected(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hf_client_local_param, i32 0, i32 0, i32 0), align 4
  %11 = load i32, i32* @BTA_HF_CLIENT_PEER_CODEC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hf_client_local_param, i32 0, i32 0, i32 2), align 4
  %16 = load i32, i32* @BTA_HF_CLIENT_AT_CMD_BCC, align 4
  %17 = call i32 @BTA_HfClientSendAT(i32 %15, i32 %16, i32 0, i32 0, i32* null)
  br label %21

18:                                               ; preds = %9
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hf_client_local_param, i32 0, i32 0, i32 2), align 4
  %20 = call i32 @BTA_HfClientAudioOpen(i32 %19)
  br label %21

21:                                               ; preds = %18, %14
  br label %22

22:                                               ; preds = %21
  %23 = call i32 @memset(%struct.TYPE_9__* %4, i32 0, i32 8)
  %24 = load i32, i32* @ESP_HF_CLIENT_AUDIO_STATE_CONNECTING, align 4
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32 %29, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @hf_client_local_param, i32 0, i32 0, i32 1), i32 4)
  %31 = load i32, i32* @ESP_HF_CLIENT_AUDIO_STATE_EVT, align 4
  %32 = call i32 @btc_hf_client_cb_to_app(i32 %31, %struct.TYPE_9__* %4)
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @BT_STATUS_SUCCESS, align 4
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @BT_STATUS_FAIL, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @CHECK_HF_CLIENT_SLC_CONNECTED(...) #1

declare dso_local i64 @is_connected(i32*) #1

declare dso_local i32 @BTA_HfClientSendAT(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @BTA_HfClientAudioOpen(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @btc_hf_client_cb_to_app(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
