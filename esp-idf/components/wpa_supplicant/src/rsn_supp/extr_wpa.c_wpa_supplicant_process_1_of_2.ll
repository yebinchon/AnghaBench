; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_process_1_of_2.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_process_1_of_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i32, %struct.wpa_gtk_data }
%struct.wpa_gtk_data = type { i32 }
%struct.wpa_eapol_key = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"WPA 1/2 Group Key Handshake\0A\00", align 1
@WPA_PROTO_RSN = common dso_local global i64 0, align 8
@WPA_GROUP_HANDSHAKE = common dso_local global i32 0, align 4
@WLAN_REASON_UNSPECIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_process_1_of_2(%struct.wpa_sm* %0, i8* %1, %struct.wpa_eapol_key* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wpa_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wpa_eapol_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wpa_gtk_data*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.wpa_eapol_key* %2, %struct.wpa_eapol_key** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %16 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %15, i32 0, i32 2
  store %struct.wpa_gtk_data* %16, %struct.wpa_gtk_data** %14, align 8
  %17 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %14, align 8
  %18 = call i32 @memset(%struct.wpa_gtk_data* %17, i32 0, i32 4)
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %22 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @WPA_GET_BE16(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %26 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @WPA_GET_BE16(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %30 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WPA_PROTO_RSN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %5
  %35 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %36 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %37 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %36, i64 1
  %38 = bitcast %struct.wpa_eapol_key* %37 to i32*
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %14, align 8
  %42 = call i32 @wpa_supplicant_process_1_of_2_rsn(%struct.wpa_sm* %35, i32* %38, i32 %39, i32 %40, %struct.wpa_gtk_data* %41)
  store i32 %42, i32* %13, align 4
  br label %52

43:                                               ; preds = %5
  %44 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %45 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %14, align 8
  %51 = call i32 @wpa_supplicant_process_1_of_2_wpa(%struct.wpa_sm* %44, %struct.wpa_eapol_key* %45, i32 %46, i32 %47, i32 %48, i32 %49, %struct.wpa_gtk_data* %50)
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %43, %34
  %53 = load i32, i32* @WPA_GROUP_HANDSHAKE, align 4
  %54 = call i32 @wpa_sm_set_state(i32 %53)
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %73

58:                                               ; preds = %52
  %59 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %60 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %61 = call i32 @wpa_sm_set_seq(%struct.wpa_sm* %59, %struct.wpa_eapol_key* %60, i32 0)
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %64 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %66 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @wpa_supplicant_send_2_of_2(%struct.wpa_sm* %65, %struct.wpa_eapol_key* %66, i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %73

72:                                               ; preds = %58
  br label %77

73:                                               ; preds = %71, %57
  %74 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %75 = load i32, i32* @WLAN_REASON_UNSPECIFIED, align 4
  %76 = call i32 @wpa_sm_deauthenticate(%struct.wpa_sm* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %72
  ret void
}

declare dso_local i32 @memset(%struct.wpa_gtk_data*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @WPA_GET_BE16(i32) #1

declare dso_local i32 @wpa_supplicant_process_1_of_2_rsn(%struct.wpa_sm*, i32*, i32, i32, %struct.wpa_gtk_data*) #1

declare dso_local i32 @wpa_supplicant_process_1_of_2_wpa(%struct.wpa_sm*, %struct.wpa_eapol_key*, i32, i32, i32, i32, %struct.wpa_gtk_data*) #1

declare dso_local i32 @wpa_sm_set_state(i32) #1

declare dso_local i32 @wpa_sm_set_seq(%struct.wpa_sm*, %struct.wpa_eapol_key*, i32) #1

declare dso_local i64 @wpa_supplicant_send_2_of_2(%struct.wpa_sm*, %struct.wpa_eapol_key*, i32, i32) #1

declare dso_local i32 @wpa_sm_deauthenticate(%struct.wpa_sm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
