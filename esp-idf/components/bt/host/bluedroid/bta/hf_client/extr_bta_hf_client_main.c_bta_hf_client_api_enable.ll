; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_main.c_bta_hf_client_api_enable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_main.c_bta_hf_client_api_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32, i32*)*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (i32, i32*)* }

@bta_hf_client_cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@bta_hf_client_version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"1.6\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BTM_SCO_CODEC_CVSD = common dso_local global i32 0, align 4
@AG_VOICE_SETTINGS = common dso_local global i32 0, align 4
@BTA_ID_HS = common dso_local global i32 0, align 4
@bta_hf_client_collision_cback = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_ENABLE_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @bta_hf_client_api_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_hf_client_api_enable(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = call i32 @memset(%struct.TYPE_10__* @bta_hf_client_cb, i32 0, i32 4)
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32 (i32, i32*)*, i32 (i32, i32*)** %6, align 8
  store i32 (i32, i32*)* %7, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_hf_client_cb, i32 0, i32 0), align 8
  %8 = load i32, i32* @bta_hf_client_version, align 4
  %9 = call i64 @strcmp(i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_hf_client_cb, i32 0, i32 2), align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_hf_client_cb, i32 0, i32 2), align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32, i32* @BTM_SCO_CODEC_CVSD, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_hf_client_cb, i32 0, i32 1, i32 0), align 8
  %17 = load i32, i32* @AG_VOICE_SETTINGS, align 4
  %18 = call i32 @BTM_WriteVoiceSettings(i32 %17)
  %19 = load i32, i32* @BTA_ID_HS, align 4
  %20 = load i32, i32* @bta_hf_client_collision_cback, align 4
  %21 = call i32 @bta_sys_collision_register(i32 %19, i32 %20)
  %22 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bta_hf_client_cb, i32 0, i32 0), align 8
  %23 = load i32, i32* @BTA_HF_CLIENT_ENABLE_EVT, align 4
  %24 = call i32 %22(i32 %23, i32* null)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @BTM_WriteVoiceSettings(i32) #1

declare dso_local i32 @bta_sys_collision_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
