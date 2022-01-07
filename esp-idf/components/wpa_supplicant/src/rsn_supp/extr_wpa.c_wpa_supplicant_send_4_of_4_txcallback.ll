; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_send_4_of_4_txcallback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_send_4_of_4_txcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@WPA_KEY_INFO_INSTALL = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"PTK has been installed, it may be an attack, ignor it.\00", align 1
@WPA_GROUP_HANDSHAKE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"GTK has been installed, it may be an attack, ignor it.\00", align 1
@WPA_KEY_INFO_SECURE = common dso_local global i32 0, align 4
@MLME_SETPROTECTION_PROTECT_TYPE_RX = common dso_local global i32 0, align 4
@MLME_SETPROTECTION_KEY_TYPE_PAIRWISE = common dso_local global i32 0, align 4
@WLAN_REASON_UNSPECIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_send_4_of_4_txcallback(%struct.wpa_sm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_sm*, align 8
  %4 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %3, align 8
  %5 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %9 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @WPA_KEY_INFO_INSTALL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %19 = call i64 @wpa_supplicant_install_ptk(%struct.wpa_sm* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %81

22:                                               ; preds = %17
  br label %32

23:                                               ; preds = %12, %1
  %24 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %25 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31, %22
  %33 = load i32, i32* @WPA_GROUP_HANDSHAKE, align 4
  %34 = call i32 @wpa_sm_set_state(i32 %33)
  %35 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %36 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %32
  %41 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %42 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %47 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %48 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %47, i32 0, i32 3
  %49 = call i64 @wpa_supplicant_install_gtk(%struct.wpa_sm* %46, %struct.TYPE_2__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %81

52:                                               ; preds = %45
  br label %56

53:                                               ; preds = %40
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = call i32 @wpa_printf(i32 %54, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %52
  %57 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %58 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %59 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @WPA_KEY_INFO_SECURE, align 4
  %63 = and i32 %61, %62
  %64 = call i32 @wpa_supplicant_key_neg_complete(%struct.wpa_sm* %57, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %56, %32
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @WPA_KEY_INFO_SECURE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %72 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %73 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MLME_SETPROTECTION_PROTECT_TYPE_RX, align 4
  %76 = load i32, i32* @MLME_SETPROTECTION_KEY_TYPE_PAIRWISE, align 4
  %77 = call i32 @wpa_sm_mlme_setprotection(%struct.wpa_sm* %71, i32 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %70, %65
  %79 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %80 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  store i32 0, i32* %2, align 4
  br label %83

81:                                               ; preds = %51, %21
  %82 = load i32, i32* @WLAN_REASON_UNSPECIFIED, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @wpa_supplicant_install_ptk(%struct.wpa_sm*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_sm_set_state(i32) #1

declare dso_local i64 @wpa_supplicant_install_gtk(%struct.wpa_sm*, %struct.TYPE_2__*) #1

declare dso_local i32 @wpa_supplicant_key_neg_complete(%struct.wpa_sm*, i32, i32) #1

declare dso_local i32 @wpa_sm_mlme_setprotection(%struct.wpa_sm*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
