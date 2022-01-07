; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_send_2_of_2.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_send_2_of_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_eapol_key = type { i32, i32, i32, i32, i32, i32 }

@IEEE802_1X_TYPE_EAPOL_KEY = common dso_local global i32 0, align 4
@WPA_GROUP_HANDSHAKE_BIT = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"2/2 txcb_flags=%d\0A\00", align 1
@WPA_PROTO_RSN = common dso_local global i64 0, align 8
@EAPOL_KEY_TYPE_RSN = common dso_local global i32 0, align 4
@EAPOL_KEY_TYPE_WPA = common dso_local global i32 0, align 4
@WPA_KEY_INFO_KEY_INDEX_MASK = common dso_local global i32 0, align 4
@WPA_KEY_INFO_MIC = common dso_local global i32 0, align 4
@WPA_KEY_INFO_SECURE = common dso_local global i32 0, align 4
@WPA_REPLAY_COUNTER_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"WPA Send 2/2 Group key\0A\00", align 1
@ETH_P_EAPOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_send_2_of_2(%struct.wpa_sm* %0, %struct.wpa_eapol_key* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_sm*, align 8
  %7 = alloca %struct.wpa_eapol_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.wpa_eapol_key*, align 8
  %12 = alloca i32*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %6, align 8
  store %struct.wpa_eapol_key* %1, %struct.wpa_eapol_key** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %14 = load i32, i32* @IEEE802_1X_TYPE_EAPOL_KEY, align 4
  %15 = bitcast %struct.wpa_eapol_key** %11 to i8*
  %16 = call i32* @wpa_sm_alloc_eapol(%struct.wpa_sm* %13, i32 %14, i32* null, i32 24, i64* %10, i8* %15)
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %110

20:                                               ; preds = %4
  %21 = load i32, i32* @WPA_GROUP_HANDSHAKE_BIT, align 4
  %22 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %23 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %28 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %32 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WPA_PROTO_RSN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* @EAPOL_KEY_TYPE_RSN, align 4
  br label %40

38:                                               ; preds = %20
  %39 = load i32, i32* @EAPOL_KEY_TYPE_WPA, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %11, align 8
  %43 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @WPA_KEY_INFO_KEY_INDEX_MASK, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @WPA_KEY_INFO_SECURE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %11, align 8
  %55 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @WPA_PUT_BE16(i32 %56, i32 %57)
  %59 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %60 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @WPA_PROTO_RSN, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %40
  %65 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %11, align 8
  %66 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @WPA_PUT_BE16(i32 %67, i32 0)
  br label %77

69:                                               ; preds = %40
  %70 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %11, align 8
  %71 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %74 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @memcpy(i32 %72, i32 %75, i32 2)
  br label %77

77:                                               ; preds = %69, %64
  %78 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %11, align 8
  %79 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %82 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @WPA_REPLAY_COUNTER_LEN, align 4
  %85 = call i32 @memcpy(i32 %80, i32 %83, i32 %84)
  %86 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %11, align 8
  %87 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @WPA_PUT_BE16(i32 %88, i32 0)
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %93 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %94 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %99 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @ETH_P_EAPOL, align 4
  %102 = load i32*, i32** %12, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %11, align 8
  %105 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @wpa_eapol_key_send(%struct.wpa_sm* %92, i32 %96, i32 %97, i32 %100, i32 %101, i32* %102, i64 %103, i32 %106)
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @wpa_sm_free_eapol(i32* %108)
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %77, %19
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32* @wpa_sm_alloc_eapol(%struct.wpa_sm*, i32, i32*, i32, i64*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_PUT_BE16(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wpa_eapol_key_send(%struct.wpa_sm*, i32, i32, i32, i32, i32*, i64, i32) #1

declare dso_local i32 @wpa_sm_free_eapol(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
